#!/usr/bin/env bash

# Detect which compositor is running
case "$XDG_CURRENT_DESKTOP" in
    Niri)
        niri msg action quit
        ;;
    Hyprland)
        hyprctl dispatch exit
        ;;
    *)
        notify-send "Logout Error" "Unsupported desktop: $XDG_CURRENT_DESKTOP"
        echo "Unsupported desktop environment. Please log out manually."
        exit 1
        ;;
esac