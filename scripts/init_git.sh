git config --global user.name "goobGoblin"
git config --global user.email "erb.zai@gmail.com"
ssh-keygen -t ed25519 -C "erb.zai@gmail.com"
cat ~/.ssh/id_ed25519.pub
echo "Add this key to github. Go to GitHub > Settings > SSH and GPG keys > New SSH key"
