vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set showcmd")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set directory=~/.config/nvim/swap")

vim.cmd("set splitright")
vim.cmd("set splitbelow")

vim.keymap.set('n','<leader>n',':Neotree filesystem reveal left<CR>')



