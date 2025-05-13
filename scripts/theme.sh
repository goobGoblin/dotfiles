
# install matugen
cargo install matugen

# add nerd fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
bash install.sh JetBrainsMono
# refresh font cache
fc-cache -fv
cd 
