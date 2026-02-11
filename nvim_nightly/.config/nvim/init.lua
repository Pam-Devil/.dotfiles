
vim.o.swapfile = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.g.mapleader = " " 
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.keymap.set('n', '<leader>o',':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>W',':write<CR>')
vim.keymap.set('n', '<leader>q',':quit<CR>')

vim.pack.add({
    {src = "https://github.com/catppuccin/nvim"}, 
    {src = "https://github.com/vague2k/vague.nvim"},
    {src = "https://github.com/nvim-lua/plenary.nvim"},
    {src = "https://github.com/nvim-telescope/telescope.nvim"},
    {src = "https://github.com/folke/flash.nvim"},
    {src = "https://github.com/nvim-lualine/lualine.nvim"},
    {src = "https://github.com/nvim-mini/mini.files"},
    {src = "https://github.com/nvim-tree/nvim-web-devicons"},
})
require ('lualine').setup({})
vim.cmd("colorscheme catppuccin")
vim.cmd("hi statusline guibg=NONE")
