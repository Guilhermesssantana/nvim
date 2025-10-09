require('mason').setup()
require('mason-lspconfig').setup{
  ensure_installed = { "pyright", "tsserver", "lua_ls" }
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  local bufmap = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, {buffer=bufnr, desc=desc})
  end

  bufmap('n', 'gd', vim.lsp.buf.definition, "Goto Definition")
  bufmap('n', 'K', vim.lsp.buf.hover, "Hover")
  bufmap('n', '<leader>rn', vim.lsp.buf.rename, "Rename")
  bufmap('n', '<leader>ca', vim.lsp.buf.code_action, "Code Action")
end

lspconfig.pyright.setup{ on_attach = on_attach, capabilities = capabilities }
lspconfig.tsserver.setup{ on_attach = on_attach, capabilities = capabilities }
lspconfig.lua_ls.setup{ on_attach = on_attach, capabilities = capabilities }

