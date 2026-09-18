#!/usr/bin/env bash

DIR="$HOME/Pictures/Screenshots"
FILE="$DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

case "$1" in
    full)
        scrot "$FILE"
        xclip -selection clipboard -target image/png -i "$FILE"
        dunstify -a "Screenshot" -u low "Screenshot Captured" "Full screen copied to clipboard & saved." -t 1500
        ;;
    area)
        scrot -s -f "$FILE"
        if [ -f "$FILE" ]; then
            xclip -selection clipboard -target image/png -i "$FILE"
            dunstify -a "Screenshot" -u low "Screenshot Captured" "Selected area copied to clipboard & saved." -t 1500
        fi
        ;;
esac
