#!/usr/bin/env bash

case "$1" in
    volume_up)
        pactl set-sink-mute @DEFAULT_SINK@ 0
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]+(?=%)' | head -1)
        dunstify -a "OSD" -u low -r 9993 -h int:value:"$vol" "Volume: ${vol}%" -t 1500
        ;;
    volume_down)
        pactl set-sink-mute @DEFAULT_SINK@ 0
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]+(?=%)' | head -1)
        dunstify -a "OSD" -u low -r 9993 -h int:value:"$vol" "Volume: ${vol}%" -t 1500
        ;;
    volume_mute)
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
        if [ "$mute" = "yes" ]; then
            dunstify -a "OSD" -u low -r 9993 "Volume: Muted" -t 1500
        else
            vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]+(?=%)' | head -1)
            dunstify -a "OSD" -u low -r 9993 -h int:value:"$vol" "Volume: ${vol}%" -t 1500
        fi
        ;;
    brightness_up)
        brightnessctl set +5%
        bright=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')
        dunstify -a "OSD" -u low -r 9994 -h int:value:"$bright" "Brightness: ${bright}%" -t 1500
        ;;
    brightness_down)
        brightnessctl set 5%-
        bright=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')
        dunstify -a "OSD" -u low -r 9994 -h int:value:"$bright" "Brightness: ${bright}%" -t 1500
        ;;
esac
