local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<cr>", {})
vim.keymap.set("n", "<leader>pF", ":Telescope find_files hidden=true<cr>", {})
vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

local keymap = vim.keymap.set
local tb = require("telescope.builtin")
local opts = { noremap = true, silent = true }

keymap("n", "<space>g", ":Telescope grep_string<cr>", opts)
keymap("v", "<space>g", function()
  local text = vim.getVisualSelection()
  tb.grep_string({ default_text = text })
end, opts)

keymap("n", "<space>G", ":Telescope live_grep<cr>", opts)
keymap("v", "<space>G", function()
  local text = vim.getVisualSelection()
  tb.live_grep({ default_text = text })
end, opts)
