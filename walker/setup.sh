#!/bin/sh
path=$(pwd)

# intsalling dependencies
# printf "Installing dependencies...\n"
# sudo dnf install dunst -y

# making directories
mkdir -p $HOME/.config/walker

# configs symbolic links
printf "Setting up symbolic links...\n"
rm -rf $HOME/.config/walker
ln -s $path $HOME/.config/walker

# DONE
printf "Done!\n"
