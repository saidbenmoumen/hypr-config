#!/bin/sh
path=$(pwd)

# cleanup old nvim 
rm -rf $HOME/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# symbolic link new one
ln -s $path $HOME/.config/nvim

printf "DONE!\n"
