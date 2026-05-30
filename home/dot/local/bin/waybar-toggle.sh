#!/usr/bin/env bash

if pgrep -x waybar > /dev/null; then
    pkill waybar
else
    niri msg action spawn-sh -- "waybar -c $HOME/.config/waybar/config-niri.jsonc"
fi
