#!/usr/bin/env bash

monitors=($(xrandr | grep 'connected' | awk '{print $1}'))
sizes=($(xrandr | grep 'connected' | awk '{print $3}' | awk -Fx '{print $1}'))

for monitor in "${!monitors[@]}"
do
    eww close "bar_$monitor"
done

for monitor in "${!monitors[@]}"
do
    if [[ ${sizes[monitor]} -eq 1920 ]]
    then
        eww open --screen "$monitor" "bar_$monitor" --arg width=1890px
    else
        eww open --screen "$monitor" "bar_$monitor" --arg width=2530px
    fi
done

