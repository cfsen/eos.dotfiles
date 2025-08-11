#!/bin/bash

echo "WARNING!"
echo "This will overwrite your CURRENT CONFIG."
echo "Press enter to be warned again."

read

echo "The following files will be overwritten:"

echo "~/.config/hypr/hyprpaper.conf"
echo "~/.config/hypr/hyprland.conf"
echo "~/.config/hypr/hyprlock.conf"

echo "~/.config/waybar/config.jsonc"
echo "~/.config/waybar/styles.css"

echo "~/.config/inori/config.toml"
echo "~/.config/rmpc/config.ron"
echo "~/.config/rmpc/themes/theme.ron"

echo "~/.config/ghostty/config"

echo "~/.bashrc"

echo "Press enter to continue."

read

mkdir -p ./.config/hypr/
mkdir -p ./.config/waybar/
mkdir -p ~/.config/inori/
mkdir -p ~/.config/ghostty/
mkdir -p ~/.config/rofi/

cp -v ./hyprland/hyprland.conf ~/.config/hypr/hyprland.conf
cp -v ./hyprland/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
cp -v ./hyprland/hyprlock.conf ~/.config/hypr/hyprlock.conf

cp -v ./waybar/styles.css ~/.config/waybar/styles.css
cp -v ./waybar/config.jsonc ~/.config/waybar/config.jsonc

cp -v ./inori/config.toml ~/.config/inori/config.toml
cp -v ./rmpc/config.ron ~/.config/rmpc/config.ron
cp -v ./rmpc/themes/theme.ron ~/.config/rmpc/themes/theme.ron

cp -v ./ghostty/config ~/.config/ghostty/config

cp -v ./rofi/* ~/.config/rofi/

cp -v ./.bashrc ~/.
