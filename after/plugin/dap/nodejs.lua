local dap = require("dap")

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { "/Users/shamsiev/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" }
}

dap.configurations.javascript = {
  {
    type = "node2",
    name = "node attach",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
  }
}
