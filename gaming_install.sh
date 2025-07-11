#!/bin/bash
set -e

sudo apt update
sudo apt install -y lutris gamemode mangohud corectrl obs-studio steam
sudo apt install -y flatpak snapd
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.valvesoftware.Steam net.davidotek.pupgui2 com.obsproject.Studio net.lutris.Lutris
sudo snap install protonup-qt
echo "Gaming-Tools installiert."