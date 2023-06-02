function SetColor(color)
  color = color or "habamax"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "#151515" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#151515" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#151515" })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1c1c1c", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "none", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#767676", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#767676", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#767676", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#eeeeee", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#1c1c1c", bg = "#1c1c1c" })
  vim.api.nvim_set_hl(0, "MsgSeparator", { fg = "#1c1c1c", bg = "#1c1c1c" })
end

SetColor()
