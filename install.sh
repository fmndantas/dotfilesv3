# NOTE: i3
sudo apt install i3 i3lock polybar arandr flameshot feh picom

# NOTE: para brilho do polybar funcionar
# WARN: desabilitado por enquanto
# sudo addgroup video
# sudo usermod -aG video $(whoami)

# NOTE: dev tools
sudo apt install git guake alacritty htop make xclip ripgrep

# NOTE: neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# NOTE: .net 8.0
sudo apt install dotnet-sdk-8.0
# NOTE: fsharp and csharp in neovim
dotnet tool install --global fsautocomplete
dotnet tool install --global csharp-ls
dotnet tool install --global fantomas

# NOTE: jetbrains nerd font
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"
mkdir jetbrainsmono && mv JetBrainsMono.zip jetbrainsmono && cd jetbrainsmono
unzip JetBrainsMono.zip
cd ..
sudo mv jetbrainsmono /usr/share/fonts
sudo fc-cache -fv

# NOTE: jetbrains toolbox
# pré-requisito para jetbrains toolbox
sudo apt install libfuse2

wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
mv $DIR/jetbrains-toolbox /usr/local/bin
rm -rf $DIR
rm jetbrains-toolbox.tar.gz

# NOTE: lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# NOTE: docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
  sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# NOTE: python3
sudo apt install python3.12-venv

# NOTE: postman
sudo snap install postman

# NOTE: google-chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable -y
# INFO: uninstall with sudo apt-get remove google-chrome-stable --auto-remove
