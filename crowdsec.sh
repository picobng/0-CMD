curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
sudo apt-get install crowdsec -y
sudo apt install crowdsec-firewall-bouncer-iptables -y
sudo cscli console enroll cl6djq03x00000wl9mh1y9acd
