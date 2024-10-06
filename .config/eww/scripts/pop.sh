#!/bin/bash

calendar() {
LOCK_FILE="$HOME/.cache/eww-calendar.lock"

run() {
    eww -c $HOME/.config/eww open calendar
}

# Open widgets
if [[ ! -f "$LOCK_FILE" ]]; then
    eww -c $HOME/.config/eww close system audio_ctl
    touch "$LOCK_FILE"
    run && echo "ok good!"
else
    eww -c $HOME/.config/eww close calendar
    rm "$LOCK_FILE" && echo "closed"
fi
}

audio() {
LOCK_FILE_AUDIO="$HOME/.cache/eww-audio.lock"

run() {
    eww -c $HOME/.config/eww open audio_ctl 
}

# Open widgets
if [[ ! -f "$LOCK_FILE_AUDIO" ]]; then
    eww -c $HOME/.config/eww close system calendar 
    touch "$LOCK_FILE_AUDIO"
    run && echo "ok good!"
else
    eww -c $HOME/.config/eww close audio_ctl
    rm "$LOCK_FILE_AUDIO" && echo "closed"
fi
}

system() {
LOCK_FILE_MEM="$HOME/.cache/eww-system.lock"

run() {
    eww -c $HOME/.config/eww open system 
}

# Open widgets
if [[ ! -f "$LOCK_FILE_MEM" ]]; then
    eww -c $HOME/.config/eww close calendar audio_ctl
    touch "$LOCK_FILE_MEM"
    run && echo "ok good!"
else
    eww -c $HOME/.config/eww close system 
    rm "$LOCK_FILE_MEM" && echo "closed"
fi
}

"$@"
