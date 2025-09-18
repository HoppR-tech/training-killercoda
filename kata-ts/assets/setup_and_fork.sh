# Usage: ./setup_and_fork.sh "Nom Git" "email@domaine.com" "GITHUB_TOKEN"
if [ $# -ne 3 ]; then
  echo "Usage: $0 \"Nom Git\" \"email@domaine.com\" \"GITHUB_TOKEN\"" >&2
  exit 1
fi

GIT_NAME="$1"
GIT_EMAIL="$2"
GH_TOKEN="$3"
ORGANISATION="HoppR-tech"
REPOSITORY="kata-leap-years"

REPO_TO_FORK="$ORGANISATION/$REPOSITORY"

# --- Vérifications de base ---
command -v gh >/dev/null 2>&1 || { echo "Erreur: 'gh' (GitHub CLI) n'est pas installé."; exit 1; }
command -v git >/dev/null 2>&1 || { echo "Erreur: 'git' n'est pas installé."; exit 1; }

# --- Auth GitHub via token ---
echo "$GH_TOKEN" | gh auth login --with-token

# --- Configure Git ---
gh auth setup-git

# --- Config Git (global) ---
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

echo "✅ Git configuré: $(git config --global user.name) <$(git config --global user.email)>"

# --- Fork + clone automatique ---
gh repo fork "${REPO_TO_FORK}" --clone=true

# --- Se placer dans le dossier cloné ---
if [ -d "$REPOSITORY" ]; then
  cd $REPOSITORY
else
  REPO_DIR="$(find . -maxdepth 1 -type d -name '$REPOSITORY*' | head -n 1)"
  if [ -n "${REPO_DIR:-}" ]; then
    cd "$REPO_DIR"
  else
    echo "⚠️  Impossible de trouver le dossier cloné. Abandon."
    exit 1
  fi
fi

# --- Afficher l'état pour vérification ---
echo "📂 Dossier courant: $(pwd)"
echo "🔗 Remotes:"
git remote -v

# -- cd on repository ---
cd "$(find ~ -type d -name "kata-leap-years" -maxdepth 3 | head -n 1)" \
  || { echo "⚠️  Impossible de trouver le dossier 'kata-leap-years'. Abandon." ; exit 1; }

# --- track branch ---
git checkout --track origin/ts_base

echo "🎉 Prêt ! Tu peux maintenant travailler et pousser sur ton fork."