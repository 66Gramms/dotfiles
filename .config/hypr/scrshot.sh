#!/bin/bash
output=~/Pictures/Screenshots/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png
grim "$output" && wl-copy < "$output" && notify-send -t 3000 "Grim" "Screenshot saved to $output and copied to clipboard"