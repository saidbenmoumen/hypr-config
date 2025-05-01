#!/bin/sh
path=$(pwd)

# Install dependencies
printf "Installing dependencies...\n"
sudo dnf install -y hyprland waybar

# configs symbolic links
printf "Setting up symbolic links...\n"
sudo rm -rf $HOME/.config/hypr $HOME/.config/waybar $HOME/.config/wofi
sudo ln -s $path/hypr $HOME/.config/hypr
sudo ln -s $path/waybar $HOME/.config/waybar
sudo ln -s $path/wofi $HOME/.config/wofi
