#!/usr/bin/env bash
set -euo pipefail  # stop sur erreur, variables non définies interdites

echo "🔄 Mise à jour des paquets..."
sudo apt update -y

echo "📦 Installation des dépendances (curl, unzip, zip)..."
sudo apt install -y curl unzip zip

echo "⚡ Installation de SDKMAN..."
curl -s "https://get.sdkman.io" | bash

echo "🔁 Initialisation de SDKMAN..."
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "✅ Vérification de l'installation de SDKMAN..."
sdk version

echo "☕ Installation de Java avec SDKMAN..."
sdk install java

echo "📝 Création d'un fichier test Hello.java..."
cat > Hello.java <<'EOF'
public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello World with Java!");
    }
}
EOF

echo "🚀 Compilation du fichier Java..."
javac Hello.java

echo "✅ Exécution du programme Java..."
java Hello

echo "🎉 Terminé."