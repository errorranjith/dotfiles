#!/usr/bin/env bash

# Check if a kitty dropdown window exists in X11
if ! xdotool search --classname "dropdown_terminal" >/dev/null 2>&1; then
    kitty --name dropdown_terminal &
else
    i3-msg '[instance="dropdown_terminal"] scratchpad show, resize set 900 520, move position center'
fi
