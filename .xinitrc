#!/bin/sh

blueman-applet &

feh --bg-scale $HOME/wallpapers/manga-samurai.png &

# Matar picom si está corriendo y arrancar uno nuevo
pkill picom
picom &

# Esperar hasta que picom esté corriendo (máximo 5 segundos)
for i in {1..10}; do
    if pgrep -x picom > /dev/null; then
        break
    fi
    sleep 0.5
done

slstatus &

exec dwm

