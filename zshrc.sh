# Folders
alias ll='exa -la'
alias la='ls -A'
alias l='exa -la'

alias lll='ls -la'
alias lla='ls -A'
#alias l='ls -CF'

alias maj='echo -e ".\n\tUpdate." && sudo apt update && echo -e "..\n\tUpgrade..\a" && sudo apt upgrade -y && echo -e ".....\n\tAuto remove.....\a" && sudo apt autoremove -y && echo -e "...\n\t-----End-----\a"'
alias majall='echo -e ".\n\tUpdate." && sudo apt update && echo -e "..\n\tUpgrade..\a" && sudo apt upgrade -y && echo -e "...\n\tDist-Upgrade...\a" && sudo apt dist-upgrade -y && echo -e "....\n\tFull-Upgrade....\a" && sudo apt full-upgrade -y && echo -e ".....\n\tAuto remove.....\a" && sudo apt autoremove -y && echo -e "......\n\t---End---"'

## Power
alias reb='sudo reboot'
alias shut='sudo shutdown now'

alias gg="ping google.fr"
alias log="tail -f /var/log/messages"

alias s="sudo"
# Voir les statistiques réseau d'une machine donnée (usage : flic 10.10.10.10)
alias flic="nmap -v -Pn -A"

alias listen="sudo ss -tulpn | grep LISTEN"
alias last="sudo tail -30 /var/log/syslog"
