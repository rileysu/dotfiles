#!/bin/sh

case "$1" in
    lock)
        ~/.config/sway/lock.sh
        ;;
    exit)
        swaymsg exit
        ;;
    suspend)
        ~/.config/sway/lock.sh 
	systemctl suspend
        ;;
    hibernate)
        ~/.config/sway/lock.sh 
	systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|exit|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
