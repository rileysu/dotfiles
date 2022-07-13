#!/usr/bin/fish

set -l pipe_path $argv[1]
set -l items $argv[2..]

set -l selected (printf "%s\n" $items | sort -u | fzf)

echo $selected > $pipe_path
