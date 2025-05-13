# install dev tools
apt install zoxide tmux vim stow xdotool fzf fd-find bat ripgrep -y

# link bat
ln -s /usr/bin/batcat ~/.local/bin/bat
# link fd-find
ln -s $(which fdfind) ~/.local/bin/fd

echo -e "Installing lazygit"
bash ~/dotfiles/scripts/install_lazygit.sh
echo -e "Lazygit installed"
