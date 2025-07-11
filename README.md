# AstroHackerGaming ISO-Branding & Setup

## Was ist enthalten?

- **Branding:** Wallpaper, Login-Screen und Theme sind bereits gesetzt.
- **Nach Installation/erstem Login:** Auswahlmenü für Astro-, Kali- und Gaming-Tools.
- **Modular:** Du kannst beliebige Toolsets kombinieren.

## Aufbau

```
branding/
  astro_install.sh
  kali_install.sh
  gaming_install.sh
  set-branding.sh
  first_setup.sh
  astrohackergaming_wallpaper.png
  astrohacker-setup.desktop
```

`astro_install.sh` bindet automatisch die PPAs `ppa:pch/phd2` und
`ppa:mutlaqja/ppa` ein, damit PHD2 und INDI installiert werden können.

## Cubic-Build/Integration

1. **Starte Cubic und wähle deine Ubuntu-ISO.**
2. **Im Chroot-Terminal:**
   - Lege das Branding-Verzeichnis nach `/opt/branding/`.
   - Lege die Autostart-Datei nach `/etc/skel/.config/autostart/`:
     ```bash
     sudo mkdir -p /etc/skel/.config/autostart
     sudo cp branding/astrohacker-setup.desktop /etc/skel/.config/autostart/
     ```
   - Führe das Branding-Skript aus:
     ```bash
     sudo bash /opt/branding/set-branding.sh
     ```
   - Mache Skripte ausführbar:
     ```bash
     sudo chmod +x /opt/branding/*.sh
     ```
3. **Beende Cubic und erstelle das ISO.**
4. **Fertig!**

## Nach Installation

- Beim ersten Start erscheint automatisch das Auswahlmenü.
- Nach der Software-Installation ist ein Neustart empfehlenswert.

## Manuelles Branding (falls nötig)

```bash
sudo bash /opt/branding/set-branding.sh
```

---

**Tipp:**  
Die Wallpaper-Datei (`astrohackergaming_wallpaper.png`) muss im gleichen Ordner wie die Skripte liegen!

## Viel Erfolg mit deinem Custom-ISO!