#!/bin/bash

# Script d'installation du widget Plasma To Do

WIDGET_NAME="thepiou.plasma.todo"
WIDGET_DIR="plasma-widget"

echo "==================================="
echo "Installation du widget To Do"
echo "==================================="
echo ""

# Vérifier que le dossier du widget existe
if [ ! -d "$WIDGET_DIR" ]; then
    echo "❌ Erreur: Le dossier $WIDGET_DIR n'existe pas"
    exit 1
fi

# Vérifier que kpackagetool6 est installé
if ! command -v kpackagetool6 &> /dev/null; then
    echo "❌ Erreur: kpackagetool6 n'est pas installé"
    echo "Installez-le avec: sudo pacman -S plasma-framework (Arch) ou sudo apt install plasma-framework (Debian/Ubuntu)"
    exit 1
fi

# Désinstaller le widget s'il existe déjà
echo "🔍 Vérification d'une installation existante..."
if kpackagetool6 --type=Plasma/Applet --show="$WIDGET_NAME" &> /dev/null; then
    echo "⚠️  Widget déjà installé, désinstallation..."
    kpackagetool6 --type=Plasma/Applet --remove="$WIDGET_NAME"
fi

# Installer le widget
echo "📦 Installation du widget..."
kpackagetool6 --type=Plasma/Applet --install "$WIDGET_DIR"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Widget installé avec succès!"
    echo ""
    echo "Pour l'utiliser:"
    echo "1. Clic droit sur le bureau ou le panneau"
    echo "2. Sélectionnez 'Ajouter des widgets...'"
    echo "3. Recherchez 'To Do'"
    echo "4. Glissez-déposez le widget sur votre bureau ou panneau"
    echo ""
    echo "Pour désinstaller:"
    echo "  kpackagetool6 --type=Plasma/Applet --remove=$WIDGET_NAME"
    echo ""
else
    echo ""
    echo "❌ Erreur lors de l'installation"
    exit 1
fi
