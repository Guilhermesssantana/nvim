-- lua/core/keymaps.lua
-- Atalhos principais

local map = vim.keymap.set

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

