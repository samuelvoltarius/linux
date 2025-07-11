#!/bin/bash
set -e

# Ensure PHD2 packages are available
sudo add-apt-repository -y ppa:pch/phd2
sudo apt update
sudo apt install -y kstars phd2 siril gphoto2 entangle
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.kde.kstars org.kde.siril
echo "Astro-Tools installiert."