#!/bin/sh
path=$(pwd)

# Install dependencies
printf "Installing dependencies...\n"
sudo dnf install -y hyprland waybar wofi grimshot neovim python3-neovim hyprpaper

# configs symbolic links
printf "Setting up symbolic links...\n"
sudo rm -rf $HOME/.config/hypr $HOME/.config/waybar $HOME/.config/wofi $HOME/.config/nvim $HOME/.config/ghostty
sudo ln -s $path/hypr $HOME/.config/hypr
sudo ln -s $path/waybar $HOME/.config/waybar
sudo ln -s $path/wofi $HOME/.config/wofi
sudo ln -s $path/nvim $HOME/.config/nvim
sudo ln -s $path/ghostty $HOME/.config/ghostty

# Handle target argument
target=${1}  # No default value - must be provided explicitly

if [ "$target" != "pc" ] && [ "$target" != "mac" ]; then
    printf "Error: target must be either 'pc' or 'mac'. got '$target'\n"
    exit 1
fi

# Create 'current' folder and copy target-specific configuration
printf "Setting up $target configuration...\n"
rm -rf $path/hypr/current
ln -s $path/hypr/$target $HOME/.config/hypr/current
printf "Done!\n"
