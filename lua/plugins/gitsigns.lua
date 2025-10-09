require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local map = vim.keymap.set
    map('n', '<leader>hs', gs.stage_hunk, {buffer=bufnr, desc="Stage Hunk"})
    map('n', '<leader>hr', gs.reset_hunk, {buffer=bufnr, desc="Reset Hunk"})
    map('n', '<leader>hp', gs.preview_hunk, {buffer=bufnr, desc="Preview Hunk"})
  end
}

