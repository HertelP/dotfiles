#!/bin/bash

status=$(nmcli g | grep -oE "verbunden")
essid=$(nmcli c | grep wlp2s0 | awk '{print ($1)}')

if !$status ; then
    icon="󰤮"
    text=""
    col="#C34043"

else
    icon=""
    text="${essid}"
    col="#DCD7BA"
fi

if [[ "$1" == "--COL" ]]; then
    echo $col	
elif [[ "$1" == "--ESSID" ]]; then
	echo $text
elif [[ "$1" == "--ICON" ]]; then
	echo $icon
fi

