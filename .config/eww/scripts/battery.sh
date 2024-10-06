#!/bin/bash

battery() {
   acpi -b | awk -F", |%" '{print $2}'
}
battery_stat(){
   acpi -b | awk '{print $5}' | awk -F: '{print $1,":",$2}'
}

if [[ "$1" == "--bat" ]]; then
    battery
elif [[ "$1" == "--bat-stat" ]]; then
    battery_stat
fi
