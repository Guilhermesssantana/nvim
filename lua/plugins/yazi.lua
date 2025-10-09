-- Exemplo de configuração pra yazi.nvim
require("yazi").setup({
  keymaps = {
    open_file_in_tab = "<CR>",  -- faz Enter abrir em tab
    open_file_in_vertical_split = "v",
    open_file_in_horizontal_split = "h",
  },
  -- outras configs...
})

