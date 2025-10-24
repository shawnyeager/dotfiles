#!/bin/bash
# Check lid state and disable laptop display if lid is closed
# Add this to your hyprland.conf: exec-once = ~/.config/hypr/scripts/lid-check.sh

LID_STATE=$(cat /proc/acpi/button/lid/LID0/state 2>/dev/null || cat /proc/acpi/button/lid/LID/state 2>/dev/null)

if [[ $LID_STATE == *"closed"* ]]; then
    hyprctl keyword monitor "eDP-1, disable"
fi
