#! /bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
	
## French
sudo nano /etc/default/locale
LANG="fr"
LANGUAGE=fr_FR:fr
LC_CTYPE="fr_FR.UTF-8"
LC_NUMERIC="fr_FR.UTF-8"
LC_TIME="fr_FR.UTF-8"
LC_COLLATE="fr_FR.UTF-8"
LC_MONETARY="fr_FR.UTF-8"
LC_MESSAGES="fr_FR.UTF-8"
LC_PAPER="fr_FR.UTF-8"
LC_NAME="fr_FR.UTF-8"
LC_ADDRESS="fr_FR.UTF-8"
LC_TELEPHONE="fr_FR.UTF-8"
LC_MEASUREMENT="fr_FR.UTF-8"
LC_IDENTIFICATION="fr_FR.UTF-8"
LC_ALL="fr_FR.UTF-8"

## Config locale
sudo localectl set-locale fr_FR.UTF-8 && sudo localectl set-keymap fr && sudo localectl set-x11-keymap fr


sudo apt install manpages-fr manpages-fr-extra aptitude-doc-fr -y

## Install ZSH, GIT, CURL
sudo apt install zsh git curl -y
## Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/robbyrussell/xiong-chiamiov-plus/g' .zshrc && zsh

#### Install CockPit
sudo apt install -y cockpit cockpit-doc && cd /tmp && wget https://github.com/45Drives/cockpit-navigator/releases/download/v0.5.8/cockpit-navigator_0.5.8-1focal_all.deb && sudo apt install ./cockpit-navigator_0.5.8-1focal_all.deb && wget https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.0/cockpit-file-sharing_3.2.0-1focal_all.deb && sudo apt install ./cockpit-file-sharing_3.2.0-1focal_all.deb -y && wget https://github.com/45Drives/cockpit-benchmark/releases/download/v0.2.1/cockpit-benchmark_0.2.1-1focal_all.deb && sudo apt install ./cockpit-benchmark_0.2.1-1focal_all.deb -y && cd /usr/share/cockpit && sudo git clone https://github.com/MRsagi/cockpit-temperature-plugin.git

## Install Apps
sudo apt install exa tree neofetch lolcat screen htop -y

## Install Apps-2
sudo apt install hdparm -y

## Install Docker

sudo apt remove docker docker-engine docker.io containerd runc -y && sudo apt update && sudo apt install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y && sudo groupadd docker
sudo usermod -aG docker n0ne && mkdir -p /home/n0ne/.docker && sudo chown "n0ne":"n0ne" /home/n0ne/.docker -R && sudo chmod g+rwx "/home/n0ne/.docker" -R
sudo systemctl enable docker.service && sudo systemctl enable containerd.service && sudo reboot
cd .docker && docker run hello-world

