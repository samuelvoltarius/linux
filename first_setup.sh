#!/bin/bash

# Dialog-Menü bereitstellen
if ! command -v dialog &> /dev/null; then
    sudo apt update && sudo apt install -y dialog
fi

CHOICES=$(dialog --separate-output --checklist "Welche Software möchtest du installieren?\n[Leertaste] zum Auswählen, [Enter] zum Bestätigen." 20 60 10 \
1 "Astro-Tools" off \
2 "Kali-Tools" off \
3 "Gaming-Tools" off \
--output-fd 1)

clear

for CHOICE in $CHOICES
do
    case $CHOICE in
        1)
            echo "Installiere Astro-Tools ..."
            bash "$(dirname "$0")/astro_install.sh"
            ;;
        2)
            echo "Installiere Kali-Tools ..."
            bash "$(dirname "$0")/kali_install.sh"
            ;;
        3)
            echo "Installiere Gaming-Tools ..."
            bash "$(dirname "$0")/gaming_install.sh"
            ;;
    esac
done

echo "Fertig! Viel Spaß mit deinem System."