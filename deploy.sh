#!/bin/bash

echo "WARNING!"
echo "This will overwrite your CURRENT CONFIG."
echo "Press enter to be warned again."

read

echo "The following files will be overwritten:"
echo "~/.config/hypr/hyprpaper.conf"
echo "~/.config/hypr/hyprland.conf"
echo "~/.config/waybar/config.jsonc"
echo "~/.config/waybar/styles.css"
echo "~/.config/inori/config.toml"
echo "~/.config/ghostty/config"
echo "Press enter to continue."

read

mkdir -p ./hyprland/
mkdir -p ./waybar/
mkdir -p ./inori/
mkdir -p ./ghostty/

cp -v ./hyprland/hyprland.conf ~/.config/hypr/hyprland.conf
cp -v ./hyprland/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
cp -v ./waybar/styles.css ~/.config/waybar/styles.css
cp -v ./waybar/config.jsonc ~/.config/waybar/config.jsonc
cp -v ./inori/config.toml ~/.config/inori/config.toml
cp -v ./ghostty/config ~/.config/ghostty/config
