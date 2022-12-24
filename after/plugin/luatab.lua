local ok, luatab = pcall(require, 'luatab')

if not ok then
  return
end

luatab.setup {}


vim.keymap.set('n','<leader>ne', ":tabnext <CR>")
vim.keymap.set('n','<leader>pe', ":tabprevious <CR>")
