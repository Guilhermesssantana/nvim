-- lua/core/keymaps.lua
-- Atalhos principais

local map = vim.keymap.set
-- tentando entender oque esse cara faz.
map("n", "<leader>g", "<cmd>Fugit2<CR>", { desc = "Abrir Fugit2" })

--preview live 
map("n", "<leader>lp", "<cmd>LiveServerStart<CR>", { desc = "Iniciar Live Preview" })
map("n", "<leader>ls", "<cmd>LiveServerStop<CR>", { desc = "Parar Live Preview" })


-- Navegação entre janelas
map("n", "<C-h>", "<C-w>h", {desc = "Window left"})
map("n", "<C-j>", "<C-w>j", {desc = "Window down"})
map("n", "<C-k>", "<C-w>k", {desc = "Window up"})
map("n", "<C-l>", "<C-w>l", {desc = "Window right"})

-- Salvamento e saída rápida
map("n", "<leader>w", "<cmd>w<cr>", {desc = "Save"})
map("n", "<leader>q", "<cmd>q<cr>", {desc = "Quit"})

-- Terminal rápido
map("n", "<leader>t", ":terminal<CR>", {desc = "Open terminal"})

-- lsp
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>sr", vim.lsp.buf.references, { desc = "Show References" })
map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "Add workspace folder" })
map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { desc = "Remove workspace folder" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
