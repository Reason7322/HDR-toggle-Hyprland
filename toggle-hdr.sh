#!/bin/bash

MONITOR="DP-3"
STATE_FILE="/tmp/hypr-hdr-state"

# Configurations
HDR_ON="2560x1440@180,auto-right,1.25,vrr,2,bitdepth,10,cm,hdr,sdrbrightness,1.52,sdrsaturation,1.12"
HDR_OFF="2560x1440@180,auto-right,1.25,vrr,2,bitdepth,10"

# Read current state or default to off
[ -f "$STATE_FILE" ] && CURRENT_STATE=$(cat "$STATE_FILE") || CURRENT_STATE="off"

# Toggle state
if [ "$CURRENT_STATE" == "on" ]; then
    hyprctl keyword monitor "$MONITOR,$HDR_OFF" && echo "off" > "$STATE_FILE"
    hyprctl notify 1 5000 "rgb(d20f39)" "HDR [OFF]"
else
    hyprctl keyword monitor "$MONITOR,$HDR_ON" && echo "on" > "$STATE_FILE"
    hyprctl notify 1 5000 "rgb(40a02b)" "HDR [ON]"
fi
