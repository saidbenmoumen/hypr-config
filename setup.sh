#!/bin/sh
path=$(pwd)

# configs symbolic links
printf "Setting up symbolic links...\n"

rm -rf $HOME/.config/hypr && ln -s $path/hypr $HOME/.config/hypr # hyprland
rm -rf $HOME/.config/waybar && ln -s $path/waybar $HOME/.config/waybar # waybar
rm -rf $HOME/.config/wofi && ln -s $path/wofi $HOME/.config/wofi # wofi
rm -rf $HOME/.config/nvim && ln -s $path/nvim $HOME/.config/nvim # nvim
rm -rf $HOME/.config/ghostty && ln -s $path/ghostty $HOME/.config/ghostty #ghostty
rm -rf $HOME/.config/sunshine/apps.json && ln -s $path/sunshine/apps.json $HOME/.config/sunshine/apps.json # sunshine

# (hyprland) Handle target argument
target=${1}  # No default value - must be provided explicitly
if [ "$target" != "pc" ] && [ "$target" != "mac" ]; then
    printf "Error: target must be either 'pc' or 'mac'. got '$target'\n"
    exit 1
fi

# (hyprland) Create 'current' folder and copy target-specific configuration
printf "Setting up $target configuration...\n"
rm -rf $path/hypr/current
ln -s $path/hypr/$target $HOME/.config/hypr/current




# DONE
printf "Done!\n"
