#######################################################################################
# install lib dependencies
apt install cargo rustup golang-go
# update rust dependencies
rustup update stable
#######################################################################################

# add nerd fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
bash install.sh JetBrainsMono
# refresh font cache
fc-cache -fv
cd 
