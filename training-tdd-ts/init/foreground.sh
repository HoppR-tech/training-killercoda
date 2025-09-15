#!/bin/bash

echo "🔄 Mise à jour des paquets..." && \
sudo apt update -y && \

echo "📦 Installation des dépendances (curl, unzip)..." && \
sudo apt install -y curl unzip gh && \

echo "⚡ Installation de Bun..." && \
curl -fsSL https://bun.sh/install | bash && \

echo "🔁 Rechargement du shell..." && \
source ~/.bashrc && \

echo "✅ Vérification de l'installation de Bun..." && \
bun --version && \

echo "📝 Création d'un fichier test hello.ts..." && \
echo 'console.log("Hello Bun!");' > hello.ts && \

echo "🚀 Exécution du test avec Bun..." && \
bun run hello.ts && \

echo "🎉 Terminé."