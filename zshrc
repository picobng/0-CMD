# export PATH=$HOME/bin:/usr/local/bin:$PATH

## OhMyZsh!
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13
ZSH_THEME="xiong-chiamiov-plus"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
ZSH_CUSTOM="~/.zsh_custom"
plugins=(git)

source $ZSH/oh-my-zsh.sh
# X-commands
mkdir ~/git && cd git && git clone https://github.com/gogosoon/x-commands.git && cd ~
source ~/git/x-commands/aliasCommands.sh

# WELCOME !!!
neofetch --cpu_display infobar --memory_display infobar --disk_display infobar

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export LANG=fr_FR.UTF-8
# export ARCHFLAGS="-arch x86_64"

# ZSH
alias zshn='nano ~/.zshrc'
alias zshu='source  ~/.zshrc'

alias zshrc="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias zshmaj="source ~/.zshrc"

## Explorer
alias la='ls -A'
alias l='exa -la'
alias ll='exa -la'
alias lll='ls -la'
alias lla='ls -A'
alias cdh='cd ~'
alias gohome="cd ~/;echo Navigated to home directory"

## Update
alias maj='echo -e ".\n\tUpdate." && sudo apt update && echo -e "..\n\tUpgrade..\a" && sudo apt upgrade -y && \
 echo -e "...\n\tDist-Upgrade...\a" && sudo apt dist-upgrade -y && echo -e "....\n\tFull-Upgrade....\a" && \
sudo apt full-upgrade -y && echo -e ".....\n\tAuto remove.....\a" && sudo apt autoremove -y && \
 echo -e "......\n\t---End---"'

### Power
alias reb='sudo reboot'
alias shut='sudo shutdown now'

#### System
alias log="tail -f /var/log/messages"
alias last="sudo tail -30 /var/log/syslog"

alias s="sudo"

##### Docker
alias dock="docker ps -a"
alias dc="docker compose"
alias dcp="docker compose pull"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcd="docker compose down"

##### Network
# Voir les statistiques réseau d'une machine donnée (usage : flic 10.10.10.10)
alias dns="ping 8.8.8.8"
alias gg="ping google.fr"
alias flic="nmap -v -Pn -A"
alias listen="sudo ss -tulpn | grep LISTEN"

###### HDD
alias hdd='sudo hdparm -t --direct /dev/vda'alias hdd='sudo hdparm -t --direct /dev/vda'
alias chkdsk='sudo shutdown -rF now'

####### Raspberry
alias temp="sudo watch -n 2 vcgencmd measure_temp"
alias temp2="awk '{printf("\ntemp=%.1f°C\n\n",$1/1e3)}' /sys/class/thermal/thermal_zone0/temp"
alias freq="sudo watch -n1 vcgencmd measure_clock arm"
