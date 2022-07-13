#!/usr/bin/fish

set -l pipe_path /tmp/selector

if ! test -p $pipe_path
	mkfifo $pipe_path
end

set -l items (cat -)

alacritty --class selector -e ~/.scripts/selector-terminal.fish $pipe_path $items &

cat $pipe_path
