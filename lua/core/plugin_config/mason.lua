require("mason").setup()
require("mason-nvim-dap").setup({
  ensure_installed = { "python", "c" }
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", "clangd", "cssls", "html", "tsserver", "grammarly",
    "jsonls", "cssmodules_ls", "css_variables", "bashls", "jdtls", "motoko_lsp",
    "tailwindcss", "typos_lsp"
  }
})

-- require("mason-lspconfig").setup({
--   ensure_installed = {
--     "clangd-format", "shellcheck", "quick_lint_js", "sqlfluff", "commitlint", "htmlhint", "cpplint",
--     "codespell", "cmakelang", "ast_grep", "alex", "tsserver", "grammarly", "js-debug-adapter", "jsonls",
--     "cssmodules_ls", "css_variables", "bashls", "clangd", "cssls", "html", "jdtls", "lua_ls", "motoko_lsp",
--     "pyright", "shfmt", "shfmt", "tailwindcss", "typos_lsp"
--   }
-- })

require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        glovals = {
          'vim',
        }
      }
    }
  }
}
require("lspconfig").clangd.setup {}

-- npm i -g vscode-langservers-extracted

require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require 'lspconfig'.html.setup {
  capabilities = capabilities,
}

require 'lspconfig'.tsserver.setup({})
require 'lspconfig'.tailwindcss.setup({})
require 'lspconfig'.motoko_lsp.setup({})
require 'lspconfig'.grammarly.setup {}
require 'lspconfig'.jsonls.setup {}
require 'lspconfig'.cssmodules_ls.setup {}
require 'lspconfig'.css_variables.setup {}
require 'lspconfig'.bashls.setup {}
require 'lspconfig'.typos_lsp.setup {}
require 'lspconfig'.jdtls.setup {}

vim.filetype.add { extension = { mo = 'motoko' } }

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
