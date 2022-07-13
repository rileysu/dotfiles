#!/usr/bin/fish

if test ! -e "$HOME/Screenshots"
	mkdir "$HOME/Screenshots"
end

switch $argv[1]
    case "entire"
        grim - | wl-copy -t image/png
    case "section"
	grim -g "$(slurp)" - | wl-copy -t image/png
    case "video"
    	
    case "entiresave"
	grim "$HOME/Screenshots/$(date +'%Y-%m-%d-%H%M%S_capture.png')"
    case "sectionsave"
	grim -g "$(slurp)" "$HOME/Screenshots/$(date +'%Y-%m-%d-%H%M%S_capture.png')"
    case "*"
	echo "Usage: $(status current-filename) {entire|section|entiresave|sectionsave}"
        exit 2
end
