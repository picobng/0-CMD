##### Commands, Alias et Shorcuts #######

##Login
neofetch --cpu_display infobar --memory_display infobar --disk_display infobar 
#| lolcat

## Explorer
alias ll='exa -la'
alias la='ls -A'
alias lll='ls -la'
alias lla='ls -A'
#alias l='ls -CF'

##SUDO
alias s="sudo"

## Update
alias aup="sudo apt update -y"
alias aug="sudo apt upgrade -y && sudo apt full-upgrade -y"
alias ai="sudo apt install -y"
alias ar="sudo apt remove -y"&
#alias maj='echo -e ".\n\tUpdate." && sudo apt update && echo -e "..\n\tUpgrade..\a" && sudo apt upgrade -y && echo -e ".....\n\tAuto remove.....\a" && sudo apt autoremove -y && echo -e "...\n\t-----End-----\a"'
alias maj='echo -e ".\n\tUpdate." && sudo apt update && echo -e "..\n\tUpgrade..\a" && sudo apt upgrade -y && echo -e "...\n\tDist-Upgrade...\a" && sudo apt dist-upgrade -y && echo -e "....\n\tFull-Upgrade....\a" && sudo apt full-upgrade -y && echo -e ".....\n\tAuto remove.....\a" && sudo apt autoremove -y && echo -e "......\n\t---End---"'

## Power
alias reb='sudo reboot'
alias shut='sudo shutdown now'

##Logs
alias log="tail -f /var/log/messages"
alias last="sudo tail -30 /var/log/syslog"

##Network
# Voir les statistiques réseau d'une machine donnée (usage : flic 10.10.10.10)
alias flic="nmap -v -Pn -A"
alias gg="ping google.fr"
alias listen="sudo ss -tulpn | grep LISTEN"

## Docker Compose
alias dc="docker compose"
alias dc-p="docker compose pull"
alias dc-u="docker compose up -d"
alias dc-d="docker compose down"

## HDD
alias hdd='sudo hdparm -t --direct /dev/vda'

##Raspberry
alias temp="sudo watch -n 2 vcgencmd measure_temp"
alias temp2="awk '{printf("\ntemp=%.1f°C\n\n",$1/1e3)}' /sys/class/thermal/thermal_zone0/temp"
alias freq="sudo watch -n1 vcgencmd measure_clock arm"
