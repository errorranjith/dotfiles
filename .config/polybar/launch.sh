#!/bin/sh

killall -q polybar

while pgrep -u "$(id -u)" -x polybar >/dev/null; do
    sleep 0.2
done

polybar -c "$HOME/.config/polybar/config.ini" main &
