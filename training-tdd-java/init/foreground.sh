#!/usr/bin/env bash
set -euo pipefail  # stop sur erreur, variables non définies interdites

echo "🔄 Mise à jour des paquets..." && \
sudo apt update -y && \

echo "📦 Installation des dépendances (curl, unzip, zip)..." && \
sudo apt install -y curl unzip zip && \

echo "⚡ Installation de SDKMAN..." 
curl -s "https://get.sdkman.io" | bash && \

echo "🔁 Initialisation de SDKMAN..." && \
source "$HOME/.sdkman/bin/sdkman-init.sh" && \

echo "✅ Vérification de l'installation de SDKMAN..." && \
sdk version && \

echo "☕ Installation de Java avec SDKMAN..." && \
sdk install java && \

echo "🎉 Terminé."