local dap = require("dap")
local dapui = require("dapui")

-- SETKEYMAP: DAP
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<F12>", dap.step_out)
vim.keymap.set("n", "\\b", dap.toggle_breakpoint)
vim.keymap.set("n", "\\B", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)

vim.keymap.set("n", "\\t", dapui.toggle)
