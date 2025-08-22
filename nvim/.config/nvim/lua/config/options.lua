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

local tpath = io.popen("luarocks path --lr-path")
local tcpath = io.popen("luarocks path --lr-cpath")
local xpath = tpath:read("*a")
local xcpath= tcpath:read("*a")
tpath:close()
tcpath:close()
package.path = xpath .. ";" .. package.path
package.cpath = xcpath .. ";" .. package.cpath

vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", {fg = "#A9A9A9"})

vim.keymap.set('n','<leader>n',':Neotree filesystem reveal left<CR>')



