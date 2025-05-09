#######################################################################################
# install lib dependencies
apt install cargo rustup golang-go
# update rust dependencies
rustup update stable
#######################################################################################

# add nerd fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
cd 
