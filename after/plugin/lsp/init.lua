local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  "tsserver",
  "rome",
  "lua_ls",
  "clangd",
  "cmake",
})

lsp.set_preferences({
  sign_icons = {
    error = "E",
    warn = "W",
    info = "I",
    hint = "H",
  }
})

lsp.setup()
