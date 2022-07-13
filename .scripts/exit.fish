#!/usr/bin/fish

switch $argv[1]
    case "lock"
        ~/.scripts/lock.fish
    case "exit"
        swaymsg exit
    case "suspend"
        ~/.scripts/lock.fish 
	systemctl suspend
    case "hibernate"
        ~/.scripts/lock.fish 
	systemctl hibernate
    case "reboot"
        systemctl reboot
    case "shutdown"
        systemctl poweroff
    case "*"
        echo "Usage: $(status current-filename) {lock|exit|suspend|hibernate|reboot|shutdown}"
        exit 2
end
