#!/bin/bash

wal -q -s -i ~/Pictures/Wallpapers/

source ~/.cache/wal/colors.sh

newbg=$(echo $wallpaper | sed "s|$HOME/Pictures/Wallpapers/||g")
#screen=$(hyprctl activeworkspace | grep -oP -m 1 '(?<=monitor ).*(?=:)')

swww img -o "HDMI-A-1" $wallpaper --transition-step 30 --transition-fps 40
swww img -o "eDP-1" $wallpaper --transition-step 30 --transition-fps 40

eww reload
