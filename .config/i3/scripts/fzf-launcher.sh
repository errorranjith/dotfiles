#!/usr/bin/env bash

# Collect desktop applications and unique binaries in PATH
get_entries() {
    # 1. Desktop app names
    for dir in /usr/share/applications "$HOME/.local/share/applications"; do
        if [ -d "$dir" ]; then
            grep -h -m1 "^Name=" "$dir"/*.desktop 2>/dev/null | cut -d= -f2-
        fi
    done

    # 2. Executable binaries
    echo "$PATH" | tr ':' '\n' | while read -r p; do
        [ -d "$p" ] && find "$p" -maxdepth 1 -executable -type f -printf "%f\n" 2>/dev/null
    done
}

# Run fzf inside Kitty
selected=$(get_entries | sort -u | fzf \
    --prompt="EXEC > " \
    --pointer="■" \
    --marker="+" \
    --color="bw,prompt:bold:white,pointer:bold:white" \
    --layout=reverse \
    --border=none \
    --info=hidden)

[ -z "$selected" ] && exit 0

# If selection matches a desktop file name, launch via gtk-launch or execute binary
desktop_file=$(grep -l -m1 "^Name=$selected$" /usr/share/applications/*.desktop "$HOME/.local/share/applications"/*.desktop 2>/dev/null | head -n1)

if [ -n "$desktop_file" ]; then
    gtk-launch "$(basename "$desktop_file")" >/dev/null 2>&1 &
else
    setsid "$selected" >/dev/null 2>&1 &
fi
