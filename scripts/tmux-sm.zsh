#!/usr/bin/env zsh

local dir=$(find . -type d |fzf)
[[ -z "$dir" ]] && return
local session=$(basename "$dir")
if tmux has-session -t "$session" 2>/dev/null; then
    tmux switch-client -t "$session"
else
    tmux new-session -d -s "$session" -c "$dir"
    if [[ -n "$TMUX" ]]; then
	tmux switch-client -t "$session"
	echo "already in tmux"
    else
        tmux attach -t "$session" 
	echo "connected to tmux"
    fi
fi

