# install neovim
add-apt-repository ppa:neovim-ppa/stable
apt install neovim

# install lunarvim and dependencies
apt install make python3-pip python3 npm nodejs ripgrep curl 
rustup update stable
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

