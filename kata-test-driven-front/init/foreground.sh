#!/bin/bash

echo "📦 Installation des dépendances (curl, unzip)..." && \
sudo apt install -y curl unzip gh && \


echo "🔍 Vérification de Node.js..."
if command -v node >/dev/null 2>&1; then
  NODE_VERSION=$(node -v | sed 's/v//' | cut -d. -f1)
else
  NODE_VERSION=0
fi

if [ "$NODE_VERSION" -ne 24 ]; then
  echo "⬇️ Installation de Node.js 24..."

  curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
  sudo apt install -y nodejs
else
  echo "✅ Node.js 24 déjà installé"
fi


echo "🔍 Vérification de pnpm..."
if ! command -v pnpm >/dev/null 2>&1; then
  echo "📦 Installation de pnpm..."
  corepack enable
  corepack prepare pnpm@latest --activate
else
  echo "✅ pnpm déjà installé"
fi


echo "🎉 Init Terminé."
