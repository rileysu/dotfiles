#!/bin/sh

files=""

for val in $(echo $PATH | tr ':' '\n'); do
	
	files="$files
$(find $val -mindepth 1 -maxdepth 1 -executable -printf %f\\n)"

done

echo "$files" | sort -u | fzf --preview='
	if [ ! -z "$(pacman -Qo {} 2> /dev/null)" ]; then
		pacman -Qi $(pacman -Qo {} | rev | cut -d " " -f 2 | rev 2> /dev/null)
	else 
		echo "Could not find package."
	fi
' --layout=reverse | xargs -r swaymsg -t command exec
