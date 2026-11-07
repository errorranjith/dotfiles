#!/usr/bin/env bash
active_ssid=$(nmcli -t -f active,ssid dev wifi 2>/dev/null | grep '^yes' | cut -d: -f2)
if [ -n "$active_ssid" ]; then
    echo "%{T2}󰤨%{T-} $active_ssid"
else
    echo "%{T2}󰤭%{T-} Off"
fi
