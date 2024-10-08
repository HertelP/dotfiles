#!/bin/bash

monitors=($(xrandr | grep 'connected' | awk '{print $1}'))

for monitor in "${!monitors[@]}"
do
    eww close "bar_$monitor"
done
