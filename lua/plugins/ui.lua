--atalho yazi
vim.keymap.set("n", "<leader>y", ":Yazi<CR>", { desc = "Abrir Yazi" })


--abrir yazi em split
vim.keymap.set("n", "<leader>yo", function()
  vim.cmd("tabnew | terminal yazi")
end, { desc = "Abrir Yazi em nova aba" })

