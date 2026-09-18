#!/bin/bash

TOUCHPAD="ELAN07B8:00 04F3:31A5 Touchpad"

xinput set-prop "$TOUCHPAD" "libinput Tapping Enabled" 1
xinput set-prop "$TOUCHPAD" "libinput Natural Scrolling Enabled" 0
