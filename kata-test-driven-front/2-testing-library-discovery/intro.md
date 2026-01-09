# 🧪 Testing Library — Tests de comportement orientés utilisateur

## 🎯 Objectif
Comprendre **pourquoi utiliser Testing Library**, à quels besoins elle répond face aux frameworks de test frontend existants, et savoir l’utiliser efficacement pour écrire des **tests fiables, lisibles et maintenables**.

---

## ❓ Pourquoi Testing Library ?

Testing Library repose sur un principe fondamental :

> **Plus un test ressemble à la façon dont un utilisateur utilise l’application, plus il est fiable.**

### Problèmes des tests UI traditionnels
- Couplage fort à l’implémentation
- Sélecteurs fragiles (`class`, `id`, structure DOM)
- Refactorings coûteux
- Tests difficiles à lire

### Ce que propose Testing Library
- Tester **ce que l’utilisateur voit et fait**
- Éviter les détails d’implémentation
- Écrire des tests proches du langage naturel

---

## 🧠 À quoi ça répond face aux frameworks existants ?

| Outil | Rôle |
|----|----|
| Jest / Vitest | Test runner |
| Cypress / Playwright | Tests end-to-end |
| Enzyme (legacy) | Tests d’implémentation |
| **Testing Library** | Tests de comportement UI |

👉 Testing Library **n’est pas un runner**, mais une **API de test** utilisable avec Jest, Vitest, Playwright ou Cypress.

---

## 🔗 Principe clé : tester le comportement, pas le code

❌ Mauvais test :
```js
expect(wrapper.find('.btn-primary')).toHaveLength(1)
