local servers = {
  lua_ls = {},
  pyright = {},
  denols = {},
  html = {},
  cssls = {},
  superhtml = {},
}

for server, settings in pairs(servers) do
  vim.lsp.config(server, settings)
  vim.lsp.enable(server)
end
