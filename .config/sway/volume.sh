#/bin/sh

#used as a reference:
#https://gist.github.com/Blaradox/030f06d165a82583ae817ee954438f2e

volume_adjust=5

timeout=2000

send_volume_notification() {
	volume=$(pamixer --get-volume-human | sed "s/%//") 
	
	#Not the best solution but it works for now until the id situation gets better
	makoctl dismiss -a
	
	if [ $volume = "muted" ]; then	
		notify-send -t $timeout -h INT:value:0 muted
	else
		notify-send -t $timeout -h INT:value:$volume volume
	fi

}

case $1 in
	"up")
		pamixer -i $volume_adjust
		send_volume_notification
		;;
	"down")
		pamixer -d $volume_adjust
		send_volume_notification
		;;
	"mute")
		pamixer -t
		send_volume_notification
		;;
	*)
		echo "Usage: $0 {up|down|mute}"
        	exit 2
esac
