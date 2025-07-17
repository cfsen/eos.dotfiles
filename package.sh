echo "WARNING!"
echo "This will overwrite the files in this directory."
echo "Press enter to continue."

read

mkdir -p ./hyprland/
mkdir -p ./waybar/
mkdir -p ./inori/
mkdir -p ./ghostty/

cp -v ~/.config/hypr/hyprland.conf ./hyprland/hyprland.conf
cp -v ~/.config/hypr/hyprpaper.conf ./hyprland/hyprpaper.conf
cp -v ~/.config/waybar/styles.css ./waybar/styles.css
cp -v ~/.config/waybar/config.jsonc ./waybar/config.jsonc
cp -v ~/.config/inori/config.toml ./inori/config.toml
cp -v ~/.config/ghostty/config ./ghostty/config
