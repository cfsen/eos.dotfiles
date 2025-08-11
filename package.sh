#!/bin/bash

echo "WARNING!"
echo "This will overwrite the files in this directory."
echo "Press enter to continue."

read

mkdir -p ./hyprland/
mkdir -p ./waybar/
mkdir -p ./inori/
mkdir -p ./rmpc/themes/
mkdir -p ./ghostty/
mkdir -p ./rofi/
mkdir -p ./bash/

cp -v ~/.config/hypr/hyprland.conf ./hyprland/hyprland.conf
cp -v ~/.config/hypr/hyprpaper.conf ./hyprland/hyprpaper.conf
cp -v ~/.config/hypr/hyprlock.conf ./hyprland/hyprlock.conf

cp -v ~/.config/waybar/styles.css ./waybar/styles.css
cp -v ~/.config/waybar/config.jsonc ./waybar/config.jsonc

cp -v ~/.config/inori/config.toml ./inori/config.toml
cp -v ~/.config/rmpc/config.ron ./rmpc/config.ron
cp -v ~/.config/rmpc/themes/theme.ron ./rmpc/themes/theme.ron

cp -v ~/.config/ghostty/config ./ghostty/config

cp -v ~/.config/rofi/* ./rofi

cp -v ~/.bashrc ./bash
