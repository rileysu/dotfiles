#/usr/bin/fish

#used as a reference:
#https://gist.github.com/Blaradox/030f06d165a82583ae817ee954438f2e

set -g brightness_adjust 5
set -g timeout 2000

function send_brightness_notification
	set -l brightness (light)
	
	#Not the best solution but it works for now until the id situation gets better
	makoctl dismiss -a
	
	notify-send -t $timeout -h "INT:value:$brightness" brightness
end

switch $argv[1]
	case "up"
		light -A $brightness_adjust
		send_brightness_notification
	case "down"
		light -U $brightness_adjust
		send_brightness_notification
	case "*"
		echo "Usage: $(status current-filename) {up|down}"
        	exit 2
end
