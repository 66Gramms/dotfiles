#!/bin/bash
output=~/Pictures/Screenshots/window-$(date +%Y-%m-%d_%H-%M-%S).png
hyprctl -j activewindow | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"' | grim -g - "$output" && wl-copy < "$output" && notify-send -t 3000 "Grim" "Active window screenshot saved to $output and copied to clipboard"
