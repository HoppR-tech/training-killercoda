#!/bin/bash
set -e

echo "🔎 Vérification de l'installation de Storybook"

# 1. Dépendance Storybook
grep -q "\"storybook\"" package.json \
  && echo "✅ Dépendance Storybook détectée" \
  || { echo "❌ Storybook absent de package.json"; exit 1; }

# 2. Dossier .storybook
[ -d ".storybook" ] \
  && echo "✅ Dossier .storybook présent" \
  || { echo "❌ Dossier .storybook manquant"; exit 1; }

# 3. Présence de stories
STORIES_COUNT=$(find src -name "*.stories.*" | wc -l)

if [ "$STORIES_COUNT" -gt 0 ]; then
  echo "✅ $STORIES_COUNT story(ies) trouvée(s)"
else
  echo "❌ Aucune story Storybook trouvée"
  exit 1
fi

echo "🎉 Storybook est correctement installé et des stories sont présentes"


./push.sh
echo " Enregistrement effectué"