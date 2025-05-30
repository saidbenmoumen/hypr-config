#!/bin/sh
path=$(pwd)

# intsalling dependencies
printf "Installing dependencies...\n"
sudo dnf install dunst -y

# making directories
mkdir -p $HOME/.config/dunst

# configs symbolic links
printf "Setting up symbolic links...\n"
rm -rf $HOME/.config/dunst/dunstrc && ln -s $path/dunst/dunstrc $HOME/.config/dunst/dunstrc # hyprland

# DONE
printf "Done!\n"
