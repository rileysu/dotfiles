#!/usr/bin/fish

set files

for val in (string split ':' $PATH)
	
	set -a files (find $val/ -mindepth 1 -maxdepth 1 -executable -printf "%f\\n")

end

printf "%s\n" $files | sort -u | fzf --preview='
	if test -z (pacman -Qo {} 2> /dev/null)
		echo "Could not find package."
	else
		pacman -Qi $(pacman -Qo {} | rev | cut -d " " -f 2 | rev 2> /dev/null)
	end
' --layout=reverse | xargs -r which | xargs -r swaymsg -t command exec
