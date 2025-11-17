#!/bin/bash

killall -q polybar
if type "xrandr" >/dev/null 2>&1; then
    for m in $(xrandr --query | grep " connected" | awk '{print $1}'); do
        LOG_FILE="$HOME/.config/polybar/$m.log"
        MONITOR="$m" polybar --reload example -l info > "$LOG_FILE" 2>&1 &
    done;
else
    LOG_FILE="$HOME/.config/polybar/polybar.log"
    polybar --reload example -l info > "$LOG_FILE" 2>&1 &
fi;
