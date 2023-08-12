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
rsync -avn --exclude='*.git' --exclude='*.md' --exclude='*.yml' --exclude='Rakefile' --exclude='*spec' ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/00-Setup ~/code/$GITHUB_USERNAME/fullstack-challenges/00-Setup

```
```
rsync -avn --exclude='*.git' --exclude='*.md' --exclude='*.yml' --exclude='Rakefile' --exclude='*spec' ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/01-Ruby ~/code/$GITHUB_USERNAME/fullstack-challenges/01-Ruby

```
