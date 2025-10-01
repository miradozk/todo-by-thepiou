#!/bin/bash

# Script de développement : réinstalle et recharge Plasma

WIDGET_NAME="thepiou.plasma.todo"
WIDGET_DIR="plasma-widget"

echo "🔄 Mise à jour du widget..."

# Désinstaller
kpackagetool6 --type=Plasma/Applet --remove="$WIDGET_NAME" &> /dev/null

# Réinstaller
kpackagetool6 --type=Plasma/Applet --install "$WIDGET_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Widget réinstallé"
    echo "🔄 Redémarrage de Plasma..."

    # Redémarrer plasmashell
    killall plasmashell
    sleep 2
    plasmashell &> /dev/null &

    echo "✅ Terminé ! Le widget a été mis à jour."
else
    echo "❌ Erreur lors de la réinstallation"
    exit 1
fi
