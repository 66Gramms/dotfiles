#!/usr/bin/env bash

sleep 3s

#ssh-add ~/.ssh/github &

swww-daemon & sleep 0.3s && swww restore & swww img ~/Pictures/Wallpapers/sierra.png &

waybar &

dunst
