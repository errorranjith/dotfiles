#!/usr/bin/env bash

if ! xdotool search --onlyvisible --class "dropdown_terminal" >/dev/null 2>&1 && \
   ! xdotool search --class "dropdown_terminal" >/dev/null 2>&1; then
    alacritty --class dropdown_terminal &
else
    i3-msg '[class="dropdown_terminal"] scratchpad show, resize set 900 520, move position center'
fi
