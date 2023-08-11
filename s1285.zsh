#!/usr/bin/env zsh

# Récupérer le nom d'utilisateur GitHub en utilisant l'outil de ligne de commande GitHub
export GITHUB_USERNAME=$(gh api user | jq -r '.login')

# Demander à l'utilisateur de confirmer le nom d'utilisateur récupéré
echo "Le nom d'utilisateur GitHub récupéré est : $GITHUB_USERNAME. Est-ce correct ? (y/n)"
read -r confirmation

if [ "$confirmation" != "y" ]; then
  echo "Veuillez entrer votre nom d'utilisateur GitHub :"
  read -r GITHUB_USERNAME
fi

directory_path=~/code/"$GITHUB_USERNAME"

# Vérifier si le chemin existe
if [ ! -d "$directory_path" ]; then
  echo "Le chemin $directory_path n'existe pas. Vérifiez votre nom d'utilisateur GitHub ou le chemin."
  exit 1
fi

# Se déplacer dans le répertoire un niveau au-dessus de 'fullstack-challenges' et faire une copie du répertoire
cd "$directory_path" || exit
cp -r fullstack-challenges wrong-fullstack-challenges

# Retourner dans le dossier 'fullstack-challenges'
cd fullstack-challenges || { echo "Le dossier 'fullstack-challenges' n'a pas été trouvé."; exit 1; }

# S'assurer que l'état est propre d'abord
git status
git add .
git commit -m "Commit everything before switching to a new branch" || { echo "Commit échoué, vérifiez les changements."; exit 1; }

# Créer une branche pour stocker ce qu'ils ont jusqu'à présent (avec le mauvais contenu) et la pousser sur GitHub
git checkout -b bootcamp-first-part
git push origin bootcamp-first-part || { echo "Poussée vers GitHub échouée. Vérifiez vos accès."; exit 1; }

# Revenir à master et forcer l'écrasement de la branche master à la version 'no-update', puis forcer la poussée sur GitHub
git checkout master
git fetch upstream
git reset --hard upstream/no-update
git push -f origin master || { echo "Poussée forcée échouée. Vérifiez vos accès."; exit 1; }

echo "Opérations terminées avec succès."
