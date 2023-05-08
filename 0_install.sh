#! /bin/sh

## First Update
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
	
### Install ZSH, GIT, CURL
sudo apt install zsh git curl -y
## Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/robbyrussell/xiong-chiamiov-plus/g' .zshrc && zsh
## Auto-completion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## HighLight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
### Activation des plugins
nano ~/.zshrc
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


## Customise Zsh with Powerlevek10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
nano ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
## Optional : To change your default login shell
chsh
/bin/zsh

#### Docker
# For curl command: $ sudo curl -sSL https://get.docker.io/ | sh
# For wget command: $ sudo wget -qO- https://get.docker.io/ | sh


#### Install CockPit
sudo apt install -y cockpit cockpit-doc && cd /tmp && wget https://github.com/45Drives/cockpit-navigator/releases/download/v0.5.8/cockpit-navigator_0.5.8-1focal_all.deb && sudo apt install ./cockpit-navigator_0.5.8-1focal_all.deb && wget https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.0/cockpit-file-sharing_3.2.0-1focal_all.deb && sudo apt install ./cockpit-file-sharing_3.2.0-1focal_all.deb -y && wget https://github.com/45Drives/cockpit-benchmark/releases/download/v0.2.1/cockpit-benchmark_0.2.1-1focal_all.deb && sudo apt install ./cockpit-benchmark_0.2.1-1focal_all.deb -y && cd /usr/share/cockpit && sudo git clone https://github.com/MRsagi/cockpit-temperature-plugin.git

# Ibramenu
sudo wget -qO ./i https://i.ibracorp.io/i && sudo chmod +x i && sudo ./i all




## French
#sudo nano /etc/default/locale
sudo echo "LANG="fr" 
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
LC_ALL="fr_FR.UTF-8"" >> /etc/default/locale

sudo localectl set-locale fr_FR.UTF-8 && sudo localectl set-keymap fr && sudo localectl set-x11-keymap fr
sudo apt install manpages-fr manpages-fr-extra aptitude-doc-fr -y
