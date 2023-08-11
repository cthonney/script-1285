#!/usr/bin/env zsh

# Récupérer le nom d'utilisateur GitHub
export GITHUB_USERNAME=`gh api user | jq -r '.login'`

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
