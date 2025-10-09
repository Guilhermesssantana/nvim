-- lua/plugins/alpha.lua
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Cabeçalho
dashboard.section.header.val = {
  "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
  "████╗  ██║██║   ██║██║████╗ ████║",
  "██╔██╗ ██║██║   ██║██║██╔████╔██║",
  "██║╚██╗██║██║   ██║██║██║╚██╔╝██║",
  "██║ ╚████║╚██████╔╝██║██║ ╚═╝ ██║",
  "╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝     ╚═╝",
}

-- Menu
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
  dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
  dashboard.button("s", "  Search Text", ":Telescope live_grep <CR>"),
  dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = "Bem-vindo ao seu Neovim, Gui 😉"

alpha.setup(dashboard.opts)

