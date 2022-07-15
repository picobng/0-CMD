#! /bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y

## Install ZSH, GIT, CURL
sudo apt install zsh git curl -y
## Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## Zsh Theme
sed -i 's/robbyrussell/xiong-chiamiov-plus/g' .zshrc
zsh

## Install CockPit
cd /tmp
sudo apt install -y cockpit cockpit-doc

wget https://github.com/45Drives/cockpit-navigator/releases/download/v0.5.8/cockpit-navigator_0.5.8-1focal_all.deb
sudo apt install ./cockpit-nav

wget https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.0/cockpit-file-sharing_3.2.0-1focal_all.deb
sudo apt install ./cockpit-fil

wget https://github.com/45Drives/cockpit-benchmark/releases/download/v0.2.1/cockpit-benchmark_0.2.1-1focal_all.deb
sudo apt install ./cockpit-benchmark

## Instal exa
sudo apt install exa -y

## Install Neofetch
sudo apt install neofetch -y

## Config locale
sudo localectl set-locale fr_FR.UTF-8
sudo localectl set-keymap fr
sudo localectl set-x11-keymap fr

## Changement UDI et GID si besoin
sudo usermod -u 1000 foo
sudo groupmod -g 1000 foo
##### Verif
sudo id -u foo
sudo id -g foo
sudo grep foo /etc/passwd
sudo grep foo /etc/group

