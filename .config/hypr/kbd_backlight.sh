#!/bin/bash

# Get the current value of the keyboard backlight
current_value=$(brightnessctl --device='tpacpi::kbd_backlight' get)

# Determine the next value
if [ "$current_value" -eq 0 ]; then
    next_value=1
elif [ "$current_value" -eq 1 ]; then
    next_value=2
else
    next_value=0
fi

# Set the new value
brightnessctl --device='tpacpi::kbd_backlight' set $next_value

