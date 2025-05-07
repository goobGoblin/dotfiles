# install neovim
add-apt-repository ppa:neovim-ppa/stable
apt install neovim

# install lunarvim and dependencies
apt install make python3-pip python3 npm nodejs cargo ripgrep curl rustup
rustup update stable
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

# add nerd fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
cd 
