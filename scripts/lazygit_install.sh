# Lazygit install
apt-get install build-essential libssl-dev libreadline-dev zlib1g-dev
LAZYGIT_VERSION=$(curl -s “https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po ‘“tag_name”: “vK*’)

curl -Lo lazygit.tar.gz “https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

tar -xf lazygit.tar.gz -C /usr/local/bin/


