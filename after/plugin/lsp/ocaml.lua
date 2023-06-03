local lsp = require("lsp-zero")

lsp.setup_servers({"ocamllsp"})

require('lspconfig').ocamllsp.setup {}

lsp.setup()
