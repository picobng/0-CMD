## Alias
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias maj='sudo apt-get update && echo -e \nUpgrade && sudo apt-get upgrade && echo -e \nFin.'
alias majall='sudo apt-get update && echo -e \nUpgrade. && sudo apt-get upgrade && echo -e \nDist-Upgrade. && sudo apt-get dist-upgrade && echo -e \nFull-Upgrade'

alias gg="ping google.fr"
alias log="tail -f /var/log/messages"

alias s="sudo"
# Voir les statistiques réseau d'une machine donnée (usage : flic 10.10.10.10)
alias flic="nmap -v -Pn -A"

alias listen="sudo ss -tulpn | grep LISTEN"
alias last="sudo tail -30 /var/log/syslog"
