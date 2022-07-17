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

wget https://github.com/45Drives/cockpit-navigator/releases/download/v0.5.8/cockpit-navigator_0.5.8-1focal_all.deb && sudo apt install ./cockpit-navigator_0.5.8-1focal_all.deb
wget https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.0/cockpit-file-sharing_3.2.0-1focal_all.deb && sudo apt install ./cockpit-file-sharing_3.2.0-1focal_all.deb -y
wget https://github.com/45Drives/cockpit-benchmark/releases/download/v0.2.1/cockpit-benchmark_0.2.1-1focal_all.deb && sudo apt install ./cockpit-benchmark_0.2.1-1focal_all.deb -y
cd /usr/share/cockpit && sudo git clone https://github.com/MRsagi/cockpit-temperature-plugin.git

## Install exa
sudo apt install exa -y

## Install Neofetch
sudo apt install neofetch -y

## Install Docker

sudo apt update
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

## Config locale
sudo localectl set-locale fr_FR.UTF-8
sudo localectl set-keymap fr
sudo localectl set-x11-keymap fr

## Changement UDI et GID si besoin
    - sudo usermod -u 1000 foo
    - sudo groupmod -g 1000 foo
  ##### Verif
        - sudo id -u foo
        - sudo id -g foo
        - sudo grep foo /etc/passwd
        - sudo grep foo /etc/group

