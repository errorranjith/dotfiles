#!/usr/bin/env bash

while true; do
    if [ -d /sys/class/power_supply/BAT0 ]; then
        capacity=$(cat /sys/class/power_supply/BAT0/capacity)
        status=$(cat /sys/class/power_supply/BAT0/status)

        if [ "$status" = "Discharging" ]; then
            if [ "$capacity" -le 5 ]; then
                notify-send -u critical "CRITICAL BATTERY" "Battery is at ${capacity}%. Connect charger immediately!"
                sleep 60
            elif [ "$capacity" -le 15 ]; then
                notify-send -u normal "Low Battery" "Battery level is ${capacity}%."
                sleep 300
            fi
        fi
    fi
    sleep 60
done
