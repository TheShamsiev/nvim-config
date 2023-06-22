function SetColor(color)
  color = color or "gruvsquirrel"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "#070707" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1a1a1a", fg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = "#1a1a1a", fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1a1a1a", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "none", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#767676", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#767676", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#767676", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#eeeeee", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#1a1a1a", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "MsgSeparator", { fg = "#1a1a1a", bg = "#1a1a1a" })
  vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1a1a1a" })
end

SetColor()
