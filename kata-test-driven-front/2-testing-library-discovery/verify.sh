#!/bin/bash
set -e

echo "🔍 Vérification des tests Testing Library"

# 1. Vérifier que des fichiers de test existent
TEST_FILES=$(find src -name "*.test.*" -o -name "*.spec.*" | wc -l)

if [ "$TEST_FILES" -eq 0 ]; then
  echo "❌ Aucun fichier de test trouvé"
  exit 1
else
  echo "✅ $TEST_FILES fichier(s) de test détecté(s)"
fi

# 2. Exécuter Vitest avec sortie JSON
pnpm vitest run --reporter=json --outputFile=vitest-results.json

TOTAL=$(jq '.numTotalTests' vitest-results.json)
PASSED=$(jq '.numPassedTests' vitest-results.json)
FAILED=$(jq '.numFailedTests' vitest-results.json)

echo "🧪 Tests totaux   : $TOTAL"
echo "✅ Tests passés   : $PASSED"
echo "❌ Tests échoués  : $FAILED"

# 3. Conditions de validation
if [ "$FAILED" -ne 0 ]; then
  echo "❌ Des tests échouent"
  exit 1
fi

if [ "$TOTAL" -lt 3 ]; then
  echo "❌ Pas assez de tests (minimum 3 requis)"
  exit 1
fi

echo "🎉 Tous les tests passent et le kata est validé"

