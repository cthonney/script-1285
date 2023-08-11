#!/usr/bin/env zsh

# Arrêter le script si l'une des commandes échoue
set -e

# Fonction pour gérer l'échec
handle_error() {
  echo "Une erreur est survenue. Vérifiez les commandes et réessayez."
}

# Appeler la fonction si une commande échoue
trap 'handle_error' ERR

# Récupérer le nom d'utilisateur GitHub
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo "Le nom d'utilisateur GitHub récupéré est : $GITHUB_USERNAME. Est-ce correct ? (y/n)"
read confirmation

if [[ "$confirmation" != "y" ]]; then
  echo "Veuillez entrer votre nom d'utilisateur GitHub :"
  read GITHUB_USERNAME
fi

# Vérifier que le dossier fullstack-challenges existe
if [ ! -d "~/code/$GITHUB_USERNAME/fullstack-challenges" ]; then
  echo "Le dossier 'fullstack-challenges' n'a pas été trouvé. Assurez-vous d'être dans le répertoire correct et réessayez."
  exit 1
fi

# Les commandes suivantes
cd ~/code/$GITHUB_USERNAME
cp -r fullstack-challenges wrong-fullstack-challenges
cd fullstack-challenges

# Git commandes
git status
git add .
git commit -m "Commit everything before switch to new branch"
git checkout -b bootcamp-first-part
git push origin bootcamp-first-part
git checkout master
git fetch upstream
git reset --hard upstream/no-update
git push -f origin master

echo "Opérations terminées avec succès!"
