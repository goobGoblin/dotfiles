
apt update

./install_fp_apps.sh

# Browsers
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

apt install qutebrowser

# Desktop Environment
apt install i3 picom rofi polybar

# Terminal and Developer
apt install git lazygit wezterm zoxide tmux vim stow

./install_vim.sh


