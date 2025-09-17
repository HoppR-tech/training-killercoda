# 🛠️ Commandes basiques pour Gradle

## 🔧 Compilation et nettoyage

Compile le projet, exécute les tests et génère les artefacts de build :
```bash
./gradlew build
```{{copy}}

Supprime les fichiers générés (dossier `build/`) :
```bash
./gradlew clean
```{{copy}}

## 🧪 Tests

Exécute les tests unitaires :
```bash
./gradlew test
```{{copy}}

💡 **Astuce** : Ajoutez `--info` ou `--debug` pour obtenir une sortie plus détaillée :
```bash
./gradlew test --info
```{{copy}}

Force l'exécution des tests même si les tâches sont à jour :
```bash
./gradlew test --rerun-tasks
```{{copy}}

## 🚀 Exécution de l'application (nécessite le plugin `application`)

Lance l'application (assurez-vous que `mainClass` est défini dans `build.gradle`) :
```bash
./gradlew run
```{{copy}}

# Erreurs connues 

## ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH :
Si vous avez l'erreur suivante : `ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.`, éxécutez : 
```bash
source ~/.bashrc
```{{copy}}

## Les commandes Gradle ne se terminent pas
Si votre commande Gradle ne se termine pas. Vérifiez que vous êtes dans le bon dossier. 