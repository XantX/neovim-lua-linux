local set = vim.opt
vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
set.fileencoding = 'utf-8'
set.breakindent = true
set.encoding = 'utf-8'
vim.notify = require("notify")
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.rnu = true
set.hlsearch = true
set.number = true
set.hidden = true
set.wrap = false
set.termguicolors = true
set.laststatus= 2
set.showcmd = true
set.showmatch = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.ai = true
set.expandtab = true
set.cmdheight = 1
set.backup = false
--set.autochdir = true
set.title = true
set.wildmenu = true
set.clipboard = 'unnamedplus'
set.ignorecase = true
set.backspace = 'start,eol,indent'
set.path:append { '**' }
set.wildignore:append { '*/node_modules/*' }

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
