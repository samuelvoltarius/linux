#!/bin/bash
set -e

# Bild ins System-Wallpaper-Verzeichnis kopieren
sudo mkdir -p /usr/share/backgrounds/
sudo cp "$(dirname "$0")/astrohackergaming_wallpaper.png" /usr/share/backgrounds/astrohackergaming_wallpaper.png

# Desktop-Wallpaper setzen (zentriert oder skaliert)
USER_NAME="$(logname)"
sudo -u "$USER_NAME" gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/astrohackergaming_wallpaper.png"
sudo -u "$USER_NAME" gsettings set org.gnome.desktop.background picture-options "zoom"

# Login-Screen-GDM-Hintergrund anpassen
THEME_DIR="/usr/share/gnome-shell/theme"
sudo cp "$(dirname "$0")/astrohackergaming_wallpaper.png" "$THEME_DIR/astrohackergaming_wallpaper.png"
if ! grep -q "astrohackergaming_wallpaper.png" "$THEME_DIR/gnome-shell.css"; then
    sudo cp "$THEME_DIR/gnome-shell.css" "$THEME_DIR/gnome-shell.css.bak"
    sudo sed -i '/#lockDialogGroup {/!b;n;c\    background: #2e3440 url("astrohackergaming_wallpaper.png"); background-repeat: no-repeat; background-size: cover; background-position: center;' "$THEME_DIR/gnome-shell.css"
fi

echo "Branding angewendet!"