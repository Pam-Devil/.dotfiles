#! /usr/bin/env zsh

session=$(tmux list-sessions -F '#S'|fzf --print-query)
echo "$session" 
