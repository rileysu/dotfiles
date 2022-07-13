#!/usr/bin/fish

#used as a reference:
#https://gist.github.com/Blaradox/030f06d165a82583ae817ee954438f2e

set -g volume_adjust 5

set -g timeout 2000

function send_volume_notification
	set -l volume (pamixer --get-volume-human | sed "s/%//")
	
	#Not the best solution but it works for now until the id situation gets better
	makoctl dismiss -a
	
	if test $volume = "muted"	
		notify-send -t $timeout -h INT:value:0 muted
	else
		notify-send -t $timeout -h INT:value:$volume volume
	end

end

switch $argv[1]
	case "up"
		pamixer -i $volume_adjust
		send_volume_notification
	case "down"
		pamixer -d $volume_adjust
		send_volume_notification
	case "mute"
		pamixer -t
		send_volume_notification
	case '*'
		echo "Usage: $0 {up|down|mute}"
        	exit 2
end
