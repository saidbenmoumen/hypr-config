#!/bin/sh
path=$(pwd)

# intsalling dependencies
printf "Installing dependencies...\n"
sudo dnf install dunst -y

# making directories
mkdir -p $HOME/.config/dunst

# configs symbolic links
printf "Setting up symbolic links...\n"
rm -rf $HOME/.config/dunst/dunstrc
ln -s $path/dunstrc $HOME/.config/dunst/dunstrc

# DONE
printf "Done!\n"
