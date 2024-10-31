sudo apt install git guake alacritty htop make

# neovimrh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# .net 8.0
sudo apt install dotnet-sdk-8.0

# jetbrains nerd font
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"
mkdir jetbrainsmono && mv JetBrainsMono.zip jetbrainsmono && cd jetbrainsmono
unzip JetBrainsMono.zip
cd ..
sudo mv jetbrainsmono /usr/share/fonts
sudo fc-cache -fv
