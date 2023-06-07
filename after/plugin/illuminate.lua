local illuminate = require("illuminate")

local bg_color = "#555555"

vim.keymap.set("n", "<C-p>", illuminate.goto_prev_reference, {})
vim.keymap.set("n", "<C-n>", illuminate.goto_next_reference, {})

vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = bg_color })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = bg_color })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = bg_color })
