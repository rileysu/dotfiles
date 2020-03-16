#!/bin/sh

files=""

for val in $(echo $PATH | tr ':' '\n'); do
	
	files="$files
$(find $val -mindepth 1 -maxdepth 1 -executable -printf %f\\n)"

done

files=$(echo "$files" | sort | uniq) 

echo "$files" | sort -u | fzf --layout=reverse | xargs -r swaymsg -t command exec
