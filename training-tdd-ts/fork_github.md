# Fork le projet depuis Github

## Indentification à Github
```
gh auth login
```

What account do you want to log into ?
- Github.com

What is your preferred protocol for Git operations on this host?
- HTTPS

Authenticate Git with your GitHub credentials?
- Y

How would you like to authenticate GitHub CLI?
- Copier votre token généré

Créer un token avec, au minimum, les droits **repo**, **read:org** et **workflow** :  https://github.com/settings/tokens

Vous êtes connecté à Github !

## Fork du repo
```
gh repo fork HoppR-tech/kata-leap-years --clone=true
```

Déplacer vous dans le repo fork et clone: 
```
cd kata-leap-years
```