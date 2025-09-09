
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
})

vim.cmd("colorscheme catppuccin")
vim.cmd("hi statusline guibg=NONE")
