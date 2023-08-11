# script-1285

Exécutez la commande suivante dans votre terminal:

```curl -sSL https://raw.githubusercontent.com/cthonney/script-1285/master/s1285.zsh | zsh```

La commande suivante se fait sous supervision d'un Teacher:
```
rsync -av --dry-run \
  --exclude='.git*' \
  --exclude='*.md' \
  --include='00-Setup/**' \
  --include='01-Ruby/**' \
  --include='02-OOP/01-OO-Basics/**' \
  --include='02-OOP/02-OO-Advanced/**' \
  --exclude='*' \
  ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/ \
  ~/code/$GITHUB_USERNAME/fullstack-challenges/
```

Le code des exercices Cookbook, Food Delivery, Schema Design & SQL( First Day SQL) devront être copier manuellement 
