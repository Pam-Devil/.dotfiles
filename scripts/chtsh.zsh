#!/usr/bin/env zsh

languages=`echo "typescript golang rust javascript lua gdscript cpp c"|tr ' ' '\n'`
utils=`echo "find sed grep awk fd mv xargs"|tr ' ' '\n'`
selected=`printf "$languages\n$utils"|fzf`
read "query?Query:"

if printf $languages | grep -qs $selected; then
    tmux split-window -h bash -c "curl cht.sh/$selected/`echo $query |tr ' ' '+'` |bat; read'?press key to exit...' "
else
    curl cht.sh/$selected~$query |bat
fi
