#!/bin/sh

bash -c 'compgen -c' | sort -u | fzf --layout=reverse | xargs -r swaymsg -t command exec
