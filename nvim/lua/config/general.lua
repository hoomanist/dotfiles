local opt = vim.opt

vim.g.leader = ','
vim.o.mouse = 'a'

vim.cmd 'set undodir=~/.vimdid'
vim.cmd 'set undofile'
vim.cmd 'set expandtab'
vim.cmd 'set shiftwidth=2'
opt.fillchars = { eob = " " }
opt.relativenumber= true
