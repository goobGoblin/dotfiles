rm -rf ~/.config/tmux/plugins

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux source ~/.config/tmux/tmux.conf
echo "Press leader + I to install plugins"

