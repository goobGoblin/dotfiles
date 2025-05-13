mv ~/.bashrc .bashrc.backup
cd ~/dotfiles
stow .

tmux source ~/.config/tmux/tmux.conf
echo -e "Press leader + I to install tmux plugins"
cd ..
source .bashrc
