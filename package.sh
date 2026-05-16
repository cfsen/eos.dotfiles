#!/bin/bash

echo "WARNING!"
echo "This will overwrite the files in this directory."
echo "Press enter to continue."

read

mkdir -p ./hyprland/
mkdir -p ./rmpc/themes/
mkdir -p ./ghostty/
mkdir -p ./bash/

cp -v ~/.config/hypr/hyprland.lua ./hyprland/hyprland.lua
cp -v ~/.config/hypr/autostart.lua ./hyprland/autostart.lua
cp -v ~/.config/hypr/fixes.lua ./hyprland/fixes.lua
cp -v ~/.config/hypr/input.lua ./hyprland/input.lua
cp -v ~/.config/hypr/keybinds.lua ./hyprland/keybinds.lua
cp -v ~/.config/hypr/look.lua ./hyprland/look.lua
cp -v ~/.config/hypr/monitors.lua ./hyprland/monitors.lua

cp -v ~/.config/hypr/hyprpaper.conf ./hyprland/hyprpaper.conf
cp -v ~/.config/hypr/hyprlock.conf ./hyprland/hyprlock.conf

cp -v ~/.config/rmpc/config.ron ./rmpc/config.ron
cp -v ~/.config/rmpc/themes/theme.ron ./rmpc/themes/theme.ron

cp -v ~/.config/ghostty/config ./ghostty/config

cp -v ~/.bashrc ./bash
