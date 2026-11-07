#!/usr/bin/env bash
if [ -z "$(bluetoothctl show 2>/dev/null | grep "Powered: yes")" ]; then
    echo "%{T2}󰂲%{T-} Off"
else
    connected_device=$(bluetoothctl devices Connected | head -n 1 | cut -d ' ' -f 3-)
    if [ -n "$connected_device" ]; then
        echo "%{T2}󰂱%{T-} $connected_device"
    else
        echo "%{T2}󰂯%{T-} On"
    fi
fi
