#!/usr/bin/env zsh

local dir=$(find . -type d |fzf)
[[ -z "$dir" ]] && return
local session=$(basename "$dir")
if tmux has-session -t "$session" 2>/dev/null; then
    if [[ -n "$TMUX" ]]; then
	tmux switch-client -t "$session"
    else
    	tmux attach -t "$session"
    fi
else
    tmux new-session -d -s "$session" -c "$dir"
    if [[ -n "$TMUX" ]]; then
	tmux switch-client -t "$session"
    else
        tmux attach -t "$session" 
    fi
fi

