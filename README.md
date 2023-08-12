# script-1285

Exécutez les commandes suivantes l'une après l'autre dans votre terminal:
```
cd ~
```

```
curl -sSL https://raw.githubusercontent.com/cthonney/script-1285/master/s1285.zsh | zsh
```





```
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
```
```
rsync -av --exclude='*.git' --exclude='*.md' --exclude='*.yml' --exclude='Rakefile' --exclude='*spec' ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/00-Setup ~/code/$GITHUB_USERNAME/fullstack-challenges/00-Setup

```
```
rsync -av --exclude='*.git' --exclude='*.md' --exclude='*.yml' --exclude='Rakefile' --exclude='*spec' ~/code/$GITHUB_USERNAME/wrong-fullstack-challenges/01-Ruby ~/code/$GITHUB_USERNAME/fullstack-challenges/01-Ruby

```



## Pour les exercices OOP et DB, il faudra copier votre code manuellement 
