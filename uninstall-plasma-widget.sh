#!/bin/bash

# Script de désinstallation du widget Plasma To Do

WIDGET_NAME="thepiou.plasma.todo"

echo "==================================="
echo "Désinstallation du widget To Do"
echo "==================================="
echo ""

# Vérifier que kpackagetool6 est installé
if ! command -v kpackagetool6 &> /dev/null; then
    echo "❌ Erreur: kpackagetool6 n'est pas installé"
    exit 1
fi

# Vérifier si le widget est installé
echo "🔍 Vérification de l'installation..."
if ! kpackagetool6 --type=Plasma/Applet --show="$WIDGET_NAME" &> /dev/null; then
    echo "⚠️  Le widget n'est pas installé"
    exit 0
fi

# Désinstaller le widget
echo "🗑️  Désinstallation du widget..."
kpackagetool6 --type=Plasma/Applet --remove="$WIDGET_NAME"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Widget désinstallé avec succès!"
    echo ""
else
    echo ""
    echo "❌ Erreur lors de la désinstallation"
    exit 1
fi
