#!/bin/sh
path=$(pwd)

# powerlevel theme
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install dependencies
printf "Installing dependencies...\n"

sudo dnf copr enable pgdev/ghostty
sudo dnf install -y ghostty hyprland waybar wofi grimshot neovim python3-neovim hyprpaper hyprpicker

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
