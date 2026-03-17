#!/usr/bin/env bash

# Detect which compositor is running
if [ "$XDG_CURRENT_DESKTOP" = "Niri" ]; then
    CONFIG_FILE="$HOME/.config/waybar/config-niri.jsonc"
elif [ "$XDG_CURRENT_DESKTOP" = "Hyprland" ]; then
    CONFIG_FILE="$HOME/.config/waybar/config-hyprland.jsonc"
else
    # Fallback
    CONFIG_FILE="$HOME/.config/waybar/config.jsonc"
fi

exec waybar -c "$CONFIG_FILE"