local dap = require("dap")

vim.keymap.set("n", "\\b", function () dap.toggle_breakpoint() end)
vim.keymap.set("n", "\\c", function () dap.continue() end)
vim.keymap.set("n", "\\o", function () dap.step_over() end)
vim.keymap.set("n", "\\i", function () dap.step_into() end)
vim.keymap.set("n", "\\r", function () dap.repl.open() end)
