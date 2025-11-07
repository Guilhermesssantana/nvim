-- lua/core/settings.lua
-- Configurações básicas do Neovim

local o = vim.o
local g = vim.g

-- Numeros de linha
o.number = true
o.relativenumber = true

-- Tabs / indent
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2

-- Cursor e aparência
o.cursorline = true
o.wrap = false

-- Swapfile
o.swapfile = false

o.splitright = true
o.splitbelow = true

-- Desativa netrw (plugins de file tree preferem)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Historico / busca
o.ignorecase = true
o.smartcase = true
o.incsearch = true

-- Clipboard
o.clipboard = "unnamedplus"
