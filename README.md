# script-1285

Exécutez la commande suivante dans votre terminal:

```
curl -sSL https://raw.githubusercontent.com/cthonney/script-1285/master/s1285.zsh | zsh
```



Ces commandes se font sous supervision d'un Teacher

```
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
```
```
rsync -av --exclude='*' --exclude='*.git*' --exclude='*.md' --include='00-Setup/**' --include='01-Ruby/**' --include='02-OOP/01-OO-Basics/**' --include='02-OOP/02-OO-Advanced/**' ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/ ~/code/$GITHUB_USERNAME/fullstack-challenges/
```
