#!/usr/bin/env bash

# Inspect Bluetooth power state
power_status=$(bluetoothctl show | grep "Powered: yes")

if [ -z "$power_status" ]; then
    toggle="󰂯  Turn Bluetooth On"
    chosen_device=$(echo -e "$toggle" | rofi -dmenu -i -p "Bluetooth: ")
    if [ "$chosen_device" = "$toggle" ]; then
        bluetoothctl power on
    fi
    exit
else
    toggle="󰂲  Turn Bluetooth Off"
fi

# List paired devices
paired_devices=$(bluetoothctl devices Paired | awk '{print $3 " " $2}')
menu_entries=$(echo -e "$toggle\n$paired_devices")

chosen_device=$(echo -e "$menu_entries" | rofi -dmenu -i -p "Bluetooth Devices: ")

if [ "$chosen_device" = "" ]; then
    exit
elif [ "$chosen_device" = "$toggle" ]; then
    bluetoothctl power off
else
    # Extract MAC address (last string token)
    mac_addr=$(echo "$chosen_device" | awk '{print $NF}')

    # Check if already connected
    is_connected=$(bluetoothctl info "$mac_addr" | grep "Connected: yes")
    if [ -n "$is_connected" ]; then
        bluetoothctl disconnect "$mac_addr"
    else
        bluetoothctl connect "$mac_addr"
    fi
fi
