local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- General mappings
map('n', '<leader>nt', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>w', ':w<CR>', opts)

-- Barbar mappings
map('n', '<leader>ne', ':BufferNext<CR>', opts)
map('n', '<leader>pe', ':BufferPrevious<CR>', opts)
map('n', '<leader>mn', ':BufferMoveNext<CR>', opts)
map('n', '<leader>mp', ':BufferMovePrevious<CR>', opts)
map('n', '<leader>B', ':BufferPick<CR>', opts)
map('n', '<leader>e', ':BufferClose<CR>', opts)
-- Resize windows
map('n', '<M-j>', ':resize -2<CR>', opts)
map('n', '<M-k>', ':resize +2<CR>', opts)
map('n', '<M-h>', ':vertical resize -2<CR>', opts)
map('n', '<M-l>', ':vertical resize +2<CR>', opts)
-- Terminal
map('n', '<leader>t', ':vsp <CR> :terminal<CR>', opts)
map('n', '<leader>vs', ':vsp <CR>', opts)

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
