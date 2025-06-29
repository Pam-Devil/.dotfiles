This is the manual for how to my system, made for my dumbass self that keeps  forgetting how to use my own machine. 

# gpush()
## pushes all the modifications on my dotfiles to my github repo. 

QUICK_INSTALL 
## A series of steps meant to quickly setup my work environment in case I need to re-do my installation. It set's up both my Shell, tmux, nvim, language servers and all that is necessary.

WORKFLOW
  The main objective here is to get a quick-flow workflow that works fast and can be quickly re-made in case of a full reinstall of the system. I'll be working on separate layers of control, the diagram below explains the layout expected for the layers. 
  Workspaces
    <C-A-1>: Terminal
    <C-A-2>: Browser
    <C-A-3>: Discord
    <C-A-4>: Music/Fun
    <C-A-5>: dunno 
  custom keybinds-AHK
    <C-A-t>: Launch a terminal with WSL2 Arch running tmux
  tmux-session layout
    Window-1: Project
    Window-2: Shell
    Window-3: Server-Shell
  neovim
    FileManager
    Harpoon
    Git

SHELL
## All the most important shell commands and CLI Tools I find important to use and the most important bits to use each of them
  <C-f>: Opens a fzf window that it's selected content will be opened in a new tmux session. 
  <C-i>: Opens a cheatsheet window for languages or core-utils. 
TMUX 
## All my TMUX custom configs and keybinds

NVIM
## All my NVIM custom keybinds and configs and most important plugins and their configurations

