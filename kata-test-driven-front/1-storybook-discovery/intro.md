# :blue_book: Storybook : Documentation et tests des composants UI

## :dart: Objectif
Découvrir Storybook, comprendre son rôle dans le développement frontend moderne et savoir **quand et pourquoi l'utiliser** en complément des tests automatisés.

---

## :book: Qu'est-ce que Storybook ?

Storybook est un **outil de développement et de documentation** permettant de construire, visualiser et tester des composants UI **de manière isolée**, en dehors de l'application principale.

Il est particulièrement utilisé avec :
- React
- Vue
- Angular
- Svelte
- Web Components

---

## :jigsaw: Présentation de Storybook

Storybook fonctionne comme un **atelier de composants** :

- Chaque composant est présenté sous forme de **stories**
- Chaque story représente un **état ou un scénario d'utilisation**
- Les composants sont rendus **sans dépendre du routing, du backend ou du state global**

:point_right: Cela permet de se concentrer uniquement sur l'UI et le comportement du composant.

---

## :test_tube: Isolation des composants

### Pourquoi isoler un composant ?

- Réduire la complexité
- Éviter les effets de bord
- Tester visuellement tous les états possibles

Exemples d'états :
- bouton activé / désactivé
- formulaire vide / en erreur
- carte avec ou sans données

Storybook permet cette isolation **sans mocks complexes**.

---

## :eyes: Visualisation et documentation itérative

Storybook est aussi un **outil de documentation vivante** :

- Les stories servent de **source de vérité**
- La documentation est générée à partir du code
- Les designers, QA et développeurs peuvent :
  - visualiser les composants
  - comprendre les props
  - explorer les variantes

:point_right: La documentation évolue **en même temps que le code**.

---

## :test_tube: Storybook et les tests : un rôle complémentaire

Storybook **ne remplace pas** les tests automatisés, il les complète.

### Comparaison rapide

| Outil | Rôle |
|-----|-----|
| Tests unitaires | Vérifier la logique |
| Tests d'intégration | Vérifier les interactions |
| Tests e2e | Vérifier les parcours utilisateurs |
| **Storybook** | Vérifier l'UI et les états visuels |

### Ce que Storybook apporte en plus
- Détection rapide des régressions visuelles
- Tests manuels plus rapides
- Support des **tests visuels** (Chromatic, Playwright)

---

## :gear: Mise en place de Storybook

### Option :one: Installation dans un projet existant

```bash
pnpm create storybook@latest
```