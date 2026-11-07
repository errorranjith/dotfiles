#!/usr/bin/env bash
TMP_IMG="/tmp/lock_screen.png"

# Take screenshot, convert to monochrome, and apply Gaussian blur
scrot "$TMP_IMG"
convert "$TMP_IMG" -colorspace Gray -filter Gaussian -resize 25% -define filter:sigma=2.5 -resize 400% "$TMP_IMG"

# Launch i3lock with the generated image
i3lock -i "$TMP_IMG" --indicator --clock --ring-color="222222ff" --keyhl-color="ffffffff"
rm "$TMP_IMG"
