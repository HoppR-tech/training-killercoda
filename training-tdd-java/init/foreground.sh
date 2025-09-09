#!/bin/bash

echo "🔄 Mise à jour des paquets..." && \
sudo apt update -y && \

echo "📦 Installation des dépendances (curl, unzip, zip)..." && \
sudo apt install -y curl unzip zip && \

echo "⚡ Installation de SDKMAN..." && \
curl -s "https://get.sdkman.io" | bash && \

echo "🔁 Rechargement du shell..." && \
source ~/.bashrc && \

echo "✅ Vérification de l'installation de SDKMAN..." && \
sdk version && \

echo "☕ Installation de Java avec SDKMAN..." && \
sdk install java && \

echo "🚀 Compilation du fichier Java..." && \
javac /init/Hello.java && \

echo "✅ Exécution du programme Java..." && \
java Hello && \

echo "🎉 Terminé."