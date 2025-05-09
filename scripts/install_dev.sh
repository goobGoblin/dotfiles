# install dev tools
apt install git zoxide tmux vim stow xdotool fzf fd-find bat
# link fd-find
ln -s $(which fdfind) ~/.local/bin/fd
# install sesh to manage tmux sessions
go install github.com/joshmedeski/sesh/v2@latest

bash install_lazygit.sh
