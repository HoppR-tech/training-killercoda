#!/bin/bash
set -e

BRANCH_NAME="$1" # storybook_discovery, testing_library_discovery, delimiter_checker 
BRANCH_PATH="kata-leap-years/$BRANCH_NAME"


echo "📦 Clone du projet"
git clone -b $BRANCH_NAME https://github.com/HoppR-tech/workshop_test_driven_frontend.git $BRANCH_PATH


echo "📂 Ouverture de l'exercice"
cd $BRANCH_PATH
rm -rf .git 


echo "⬇️ Installation des dépendances du projet..."
pnpm install