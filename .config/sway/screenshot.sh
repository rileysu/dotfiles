#!/bin/sh

if [ ! -e "$HOME/Screenshots" ]; then
	mkdir "$HOME/Screenshots"
fi

case "$1" in
    entire)
        grim - | wl-copy -t image/png
        ;;
    section)
	grim -g "$(slurp)" - | wl-copy -t image/png
        ;;
    entiresave)
	grim $HOME/Screenshots/$(date +'%Y-%m-%d-%H%M%S_capture.png')
        ;;
    sectionsave)
	grim -g "$(slurp)" $HOME/Screenshots/$(date +'%Y-%m-%d-%H%M%S_capture.png')
        ;;
    *)
        echo "Usage: $0 {entire|section|entiresave|sectionsave}"
        exit 2
esac

exit 0
