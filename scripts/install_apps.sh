# Change to home directory
cd

# Update and upgrade
apt update
apt upgrade

# Install dependencies
echo -e "Installing dependencies\n"
bash ~/dotfiles/scripts/dependencies.sh
echo -e "Dependencies installed\n"

# Browsers
echo -e "Installing browsers\n"
bash ~/doftiles/scripts/install_browser.sh
echo -e "Browsers installed\n"

# Flatpak apps
echo -e "Installing flathub apps\n"
bash ~/doftiles/scripts/install_fp_apps.sh
echo -e "Flathub apps installed installed\n"

# Desktop Environment
echo -e "Installing environmental dependencies\n"
bash ~/doftiles/scripts/install_env.sh
echo -e "Environmental dependencies installed\n"

# Terminal and Developer
echo -e "Installing developer dependencies\n"
bash ~/doftiles/scripts/install_dev.sh
echo -e "Developer dependencies installed\n"

# Install vim and neovim
echo -e "Installing vim\n"
bash ~/doftiles/scripts/install_vim.sh
echo -e "Vim installed\n"

echo -e "Installing tmux\n"
bash ~/doftiles/scripts/install_tmux.sh
echo -e "Tmux installed\n"

# Theme dependencies
echo "Installing theme\n"
bash ~/doftiles/scripts/theme.sh
echo "Theme installed\n"

echo -e "Initializing stow\n"
bash ~/dotfiles/scripts/init_stow.sh
echo -e "Stow initialized\n"

