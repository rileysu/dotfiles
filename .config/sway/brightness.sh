#/bin/sh

#used as a reference:
#https://gist.github.com/Blaradox/030f06d165a82583ae817ee954438f2e

brightness_adjust=5

timeout=2000

send_brightness_notification() {
	brightness=$(light)
	
	#bar=$(seq -s " " 0 $padding_amount | sed "s/[0-9]*//g")$(seq -s "-" 0 $brightness | sed "s/[0-9]*//g")
	
	#Not the best solution but it works for now until the id situation gets better
	makoctl dismiss -a
	notify-send -t $timeout -h INT:value:$brightness brightness
}

case $1 in
	"up")
		light -A $brightness_adjust
		send_brightness_notification
		;;
	"down")
		light -U $brightness_adjust
		send_brightness_notification
		;;
	*)
		echo "Usage: $0 {up|down}"
        	exit 2
esac
