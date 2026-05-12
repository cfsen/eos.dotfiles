#!/bin/bash

echo "WARNING!"
echo "This will overwrite the files in this directory."
echo "Press enter to continue."

read

mkdir -p ./hyprland/
mkdir -p ./rmpc/themes/
mkdir -p ./ghostty/
mkdir -p ./bash/

cp -v ~/.config/hypr/hyprland.conf ./hyprland/hyprland.conf
cp -v ~/.config/hypr/autostart.conf ./hyprland/autostart.conf
cp -v ~/.config/hypr/fixes.conf ./hyprland/fixes.conf
cp -v ~/.config/hypr/input.conf ./hyprland/input.conf
cp -v ~/.config/hypr/keybinds.conf ./hyprland/keybinds.conf
cp -v ~/.config/hypr/look.conf ./hyprland/look.conf
cp -v ~/.config/hypr/monitors.conf ./hyprland/monitors.conf

cp -v ~/.config/hypr/hyprpaper.conf ./hyprland/hyprpaper.conf
cp -v ~/.config/hypr/hyprlock.conf ./hyprland/hyprlock.conf

cp -v ~/.config/rmpc/config.ron ./rmpc/config.ron
cp -v ~/.config/rmpc/themes/theme.ron ./rmpc/themes/theme.ron

cp -v ~/.config/ghostty/config ./ghostty/config

cp -v ~/.bashrc ./bash
