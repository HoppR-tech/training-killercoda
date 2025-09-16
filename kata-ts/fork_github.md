# Fork du repository Github et identification Git

Pour fork notre repo de manière automatisé, nous avons besoin d'un token Github.
Pour cela, créer un token avec, au minimum, les droits **repo**, **read:org** et **workflow** :  https://github.com/settings/tokens

Exécuter la commande suivante pour fork le repository voulu en remplaçant les arguments par les votres :
```
sh setup_and_fork.sh "GITHUB_NAME" "GITHUB_EMAIL" "GITHUB_TOKEN" "ORGANISATION" "REPOSITORY"
```{{copy}}

**Remarque :** A chaque step, quand vous cliquez sur **Check**, un push est effectué automatiquement pour sauvegarder votre travail dans votre fork.