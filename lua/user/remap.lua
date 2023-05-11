vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>o", "o<ESC>cc<CR>")

vim.keymap.set("n", "gg", "ggg0");
vim.keymap.set("n", "G", "Gg0");

vim.keymap.set("n", "<leader>wh", "<C-w>h");
vim.keymap.set("n", "<leader>wj", "<C-w>j");
vim.keymap.set("n", "<leader>wk", "<C-w>k");
vim.keymap.set("n", "<leader>wl", "<C-w>l");
vim.keymap.set("n", "<leader>ws", "<C-w>s");
vim.keymap.set("n", "<leader>wv", "<C-w>v");

vim.keymap.set("n", "<leader>j", "<C-I>");
vim.keymap.set("n", "<leader>k", "<C-O>");
