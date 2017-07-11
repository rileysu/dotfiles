#!/bin/sh
lock() {
    i3lock
}

case "$1" in
    lock)
        ~/.config/lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        ~/.config/lock.sh && systemctl suspend
        ;;
    hibernate)
        ~/.config/lock.sh && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
