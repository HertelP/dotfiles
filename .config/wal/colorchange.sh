#!/bin/bash

wal -q -s -i ~/Wallpapers/

source ~/.cache/wal/colors.sh

newbg=$(echo $wallpaper | sed "s|$HOME/Wallpapers/||g")
#screen=$(hyprctl activeworkspace | grep -oP -m 1 '(?<=monitor ).*(?=:)')

swww img -o "HDMI-A-1" $wallpaper --transition-step 30 --transition-fps 40
swww img -o "eDP-1" $wallpaper --transition-step 30 --transition-fps 40

eww reload
