#!/usr/bin/env bash

LOCK_IMG="/tmp/i3lock_mono.png"

# Take screenshot
scrot "$LOCK_IMG"

# Convert to monochrome and pixelate (scale down 10%, scale up 1000%)
convert "$LOCK_IMG" -colorspace Gray -scale 10% -scale 1000% "$LOCK_IMG"

# Lock screen
i3lock -i "$LOCK_IMG" --nofork --ignore-empty-password --show-failed-attempts

# Clean up temp file after unlock
rm -f "$LOCK_IMG"
