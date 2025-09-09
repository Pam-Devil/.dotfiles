#! /usr/bin/env bash

git clone https://github.com/neovim/neovim $HOME/personal/neovim 
sudo pacman -Sy cmake gcc gettext lua liblua5.3.6-2-dev 

cd $HOME/personal/neovim
CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

#TODO: add the neovim install script
