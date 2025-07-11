#!/bin/bash
set -e

echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list.d/kali.list
wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add -
sudo apt update
sudo apt install -y kali-linux-core kali-system-gui kali-linux-headless kali-tools-top10 kali-linux-default \
    kali-tools-information-gathering kali-tools-vulnerability-analysis kali-tools-web kali-tools-exploitation \
    kali-tools-802-11 kali-tools-sniffing-spoofing kali-tools-forensic kali-tools-passwords kali-tools-reverse-engineering \
    kali-tools-social-engineering kali-tools-rfid kali-tools-sdr kali-tools-gpu kali-tools-voip kali-linux-nethunter
echo "Kali-Tools installiert."