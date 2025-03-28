# install flatpak for apps not on the snap store
apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.wezfurlong.wezterm
