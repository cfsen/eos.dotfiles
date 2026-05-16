#!/bin/bash

echo "WARNING!"
echo "This will overwrite your CURRENT CONFIG."
echo "Press enter to be warned again."

read

echo "The following files will be overwritten:"

echo "~/.config/hypr/hyprpaper.conf"
echo "~/.config/hypr/hyprland.conf"
echo "~/.config/hypr/hyprlock.conf"

echo "~/.config/rmpc/config.ron"
echo "~/.config/rmpc/themes/theme.ron"

echo "~/.config/ghostty/config"

echo "~/.bashrc"

echo "Press enter to continue."

read

mkdir -p ~/.config/hypr/
mkdir -p ~/.config/rmpc/themes/
mkdir -p ~/.config/ghostty/

cp -v ./hyprland/hyprland.lua ~/.config/hypr/hyprland.lua
cp -v ./hyprland/autostart.lua ~/.config/hypr/autostart.lua
cp -v ./hyprland/fixes.lua ~/.config/hypr/fixes.lua
cp -v ./hyprland/input.lua ~/.config/hypr/input.lua
cp -v ./hyprland/keybinds.lua ~/.config/hypr/keybinds.lua
cp -v ./hyprland/look.lua ~/.config/hypr/look.lua
cp -v ./hyprland/monitors.lua ~/.config/hypr/monitors.lua

cp -v ./hyprland/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
cp -v ./hyprland/hyprlock.conf ~/.config/hypr/hyprlock.conf

cp -v ./rmpc/config.ron ~/.config/rmpc/config.ron
cp -v ./rmpc/themes/theme.ron ~/.config/rmpc/themes/theme.ron

cp -v ./ghostty/config ~/.config/ghostty/config

cp -v ./bash/.bashrc ~/.bashrc
