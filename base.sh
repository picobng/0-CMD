#! /bin/sh

## Install ZSH, GIT
sudo apt install zsh git -y
## Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## Zsh Theme
sed -i 's/robbyrussell/xiong-chiamiov-plus/g' .zshrc
zsh

## Install Neofetch
sudo apt install neofetch -y
