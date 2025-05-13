# install lib dependencies
apt install cargo rustup golang-go flatpak wget curl make python3-pip python3 npm nodejs ripgrep -y
# update rust dependencies
rustup update stable
# install flatpak for apps not on the snap store
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


