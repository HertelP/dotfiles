#!/bin/bash

wal -q -s -i ~/Pictures/Wallpapers/

source ~/.cache/wal/colors.sh

newbg=$(echo $wallpaper | sed "s|$HOME/Pictures/Wallpapers/||g")
monitors=($(xrandr | grep 'connected' | awk '{print $1}'))

for monitor in "${monitors[@]}"
do
    swww img -o "$monitor" $wallpaper --transition-step 30 --transition-fps 40
done
