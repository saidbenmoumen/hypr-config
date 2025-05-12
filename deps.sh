# Install dependencies
printf "Installing dependencies...\n"

sudo dnf copr enable pgdev/ghostty
sudo dnf install -y ghostty hyprland waybar wofi grimshot neovim python3-neovim hyprpaper hyprpicker zsh-autosuggestions zsh-syntax-highlighting zsh
