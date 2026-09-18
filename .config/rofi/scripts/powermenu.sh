#!/usr/bin/env bash

# Options
lock="lock"
suspend="suspend"
logout="logout"
reboot="reboot"
shutdown="shutdown"

options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | rofi -dmenu -i -p "power" -theme-str 'window {width: 200px;} listview {lines: 5;}')"

case $chosen in
    $lock)
        i3lock --color 000000 ;;
    $suspend)
        systemctl suspend ;;
    $logout)
        i3-msg exit ;;
    $reboot)
        systemctl reboot ;;
    $shutdown)
        systemctl poweroff ;;
esac
