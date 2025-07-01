vim.keymap.set('n','<C-d>','<C-d>zz')
vim.keymap.set('n','<C-u>','<C-u>zz')
-- Split Panes keymap --
vim.keymap.set('n','<A-h>','<C-w>h')
vim.keymap.set('n','<A-j>','<C-w>j')
vim.keymap.set('n','<A-k>','<C-w>k')
vim.keymap.set('n','<A-l>','<C-w>l')
vim.keymap.set('n','<A-x>',':split<CR><C-w>j',{silent=true})
vim.keymap.set('n','<A-v>','<C-w>v<C-w>l')
vim.keymap.set('n','<A-c>','<C-w>c')

