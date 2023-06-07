local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      -- SETKEYMAP: TROUBLE INNER
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}

require("trouble").setup {
  use_diagnostic_signs = true
}

-- SETKEYMAP: TROUBLE OUTER
vim.keymap.set("n", "<leader>q", ":TroubleToggle<cr>", { silent = true })
