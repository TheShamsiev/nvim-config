local colors = {
  black     = "#151515",
  white     = "#eeeeee",
  red       = "#fb4934", -- gruvbox
  green     = "#8fae8a",
  blue      = "#83a598", -- gruvbox
  yellow    = "#fe8019", -- gruvbox
  gray      = "#767676",
  darkgray  = "#1c1c1c",
  lightgray = "#767676",
}

local theme = {
  normal = {
    -- lighgray
    a = { bg = colors.darkgray, fg = colors.white, gui = "bold" },
    b = { bg = colors.blue, fg = colors.black, gui = "bold" },
    c = { bg = colors.blue, fg = colors.black, gui = "bold" }
  },
  insert = { -- blue
    a = { bg = colors.darkgray, fg = colors.blue, gui = "bold" },
  },
  visual = { -- yellow
    a = { bg = colors.darkgray, fg = colors.yellow, gui = "bold" },
  },
  replace = { -- red
    a = { bg = colors.darkgray, fg = colors.red, gui = "bold" },
  },
  command = { -- green
    a = { bg = colors.darkgray, fg = colors.green, gui = "bold" },
  },
  -- Inactive is now impossible to see, because there is only one statusline
  inactive = {
    -- darkgray
    a = { bg = colors.darkgray, fg = colors.lightgray },
    b = { bg = colors.darkgray, fg = colors.lightgray },
    c = { bg = colors.darkgray, fg = colors.lightgray }
  }
}

local sections = {
  -- left
  lualine_a = { "mode" },
  lualine_b = { { "branch", icon = "󰊢" }, { "diff", colored = false },
    {
      "diagnostics",
      colored = false,
      symbols = {
        error = "E",
        warn = "W",
        info = "I",
        hint = "H"
      }
    } },
  lualine_c = { function() return "%=" end, { "filetype", icon_only = true, colored = false }, { "filename", path = 1 } },
  -- right
  lualine_x = {
    {
      -- Lsp server name .
      function()
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
          return ""
        end
        local lsps = {}
        for _, client in ipairs(clients) do
          local filetypes = client.config.filetypes
          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
            table.insert(lsps, client.name)
          end
        end
        if next(lsps) == nil then
          return ""
        else
          return "(" .. table.concat(lsps, " ") .. ")"
        end
      end,
    }
  },
  lualine_y = { "searchcount", "selectioncount", "location", "progress", { "filetype", icons_enabled = false } },
  lualine_z = {}
}

local config = {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 500,
      tabline = 500,
      winbar = 500,
    }
  },
  sections = sections,
  inactive_sections = {
    lualine_a = {},
    lualine_b = sections.lualine_b,
    lualine_c = sections.lualine_c,
    lualine_x = sections.lualine_x,
    lualine_y = sections.lualine_y,
    lualine_z = sections.lualine_z,
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("lualine").setup(config)
