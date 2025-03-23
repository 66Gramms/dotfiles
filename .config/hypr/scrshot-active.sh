#!/bin/bash

# Define output directory
output="~/Pictures/Screenshots/active-$(date +%Y-%m-%d_%H-%M-%S).png"

# Get the geometry of the focused window
geometry=$(hyprctl activewindow -j | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')

# Take screenshot of focused window
grim -g "$geometry" "$output" && wl-copy < "$output"

# Send notification
notify-send -t 3000 "Grim" "Screenshot saved to $output and copied to clipboard"
