#!/bin/bash
output=~/Pictures/Screenshots/selected-$(date +%Y-%m-%d_%H-%M-%S).png
grim -g "$(slurp)" "$output" && wl-copy < "$output" && notify-send -t 3000 "Grim" "Screenshot of selected area saved to $output and copied to clipboard"