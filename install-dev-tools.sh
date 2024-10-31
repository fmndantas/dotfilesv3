sudo apt install git guake alacritty htop make xclip ripgrep

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# .net 8.0
sudo apt install dotnet-sdk-8.0
dotnet tool install --global fsautocomplete

# jetbrains nerd font
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"
mkdir jetbrainsmono && mv JetBrainsMono.zip jetbrainsmono && cd jetbrainsmono
unzip JetBrainsMono.zip
cd ..
sudo mv jetbrainsmono /usr/share/fonts
sudo fc-cache -fv

# jetbrains toolbox
# pré-requisito para jetbrains toolbox
sudo apt install libfuse2

wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
mv $DIR/jetbrains-toolbox /usr/local/bin
rm -rf $DIR
rm jetbrains-toolbox.tar.gz
