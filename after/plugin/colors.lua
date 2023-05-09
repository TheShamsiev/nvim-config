function SetColor(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "#354634" })
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#859684", fg = "#000000" })
end

SetColor()
