#!/bin/bash

echo "📦 Installation des dépendances (curl, unzip, zip)..." && \
sudo apt install -y curl unzip zip gh && \

echo "⚡ Installation de SDKMAN..." && \
curl -s "https://get.sdkman.io" | bash && \

echo "🔁 Rechargement du shell..." && \
source ~/.bashrc && \

echo "✅ Vérification de l'installation de SDKMAN..." && \
sdk version && \

echo "☕ Installation de Java avec SDKMAN..." && \
sdk install java && \

echo "🚀 Compilation du fichier Java..." && \
javac Hello.java && \

echo "✅ Exécution du programme Java..." && \
java Hello && \

echo "🎉 Terminé."