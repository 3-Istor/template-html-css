# AI Context for the HTML / CSS Template

Ce fichier est destiné aux assistants IA qui modifient ce dépôt. L'objectif est de préserver un template HTML/CSS simple, stable et prévisible, sans casser l'architecture existante.

## Stack technique

- Utiliser uniquement du HTML5 sémantique.
- Conserver un HTML peu profond, lisible et orienté contenu.
- Utiliser du CSS pur, sans framework.
- Préférer Flexbox pour le centrage et l'alignement.
- Utiliser Grid seulement si la mise en page le justifie réellement.
- Éviter le JavaScript sauf nécessité explicite.
- Préserver l'accessibilité avec des balises sémantiques et des attributs `aria-*` quand ils sont utiles.

## Système de design

### Variables CSS disponibles dans `:root`

Aucune variable CSS dans `:root` n'est définie actuellement dans le projet.

### Règle obligatoire

- Si une valeur doit être réutilisée, créer d'abord un token CSS dans `:root`.
- Utiliser ensuite ce token partout au lieu d'écrire une valeur en dur.
- Ne pas multiplier les couleurs, espacements, rayons ou ombres codés en dur si un token peut les représenter.
- Conserver la cohérence visuelle avec les valeurs déjà présentes dans le composant.

### Valeurs actuellement codées en dur dans le CSS

- Couleurs de fond: `#eef2ff`, `#f8fafc`, `#ffffff`
- Couleurs de texte: `#1f2937`, `#111827`, `#4b5563`
- Couleur d'accent: `#2563eb`
- Ombres et focus: `rgba(15, 23, 42, 0.12)`, `rgba(37, 99, 235, 0.3)`, `rgba(37, 99, 235, 0.4)`, `rgba(37, 99, 235, 0.35)`
- Espacements observés: `14px`, `16px`, `24px`, `28px`, `32px`, `36px`, `48px`

## Conventions de nommage

- Convention actuelle: classes simples en kebab-case, sans BEM.
- Classes actuellement utilisées: `.page`, `.card`, `.button`.
- Continuer avec des classes courtes, descriptives et stables.
- Ne pas introduire de BEM mixte ni de hiérarchie de classes inutile si le composant reste simple.
- Si un bloc devient plus complexe, garder le kebab-case et ajouter des classes de rôle claires plutôt que des sélecteurs profonds.

## Breakpoints responsive

- `@media (max-width: 600px)`

### Règle responsive

- Conserver ce breakpoint pour les ajustements mobiles de base.
- Ajouter un nouveau breakpoint seulement si la rupture de mise en page est nette et nécessaire.
- Éviter l'empilement de breakpoints proches.

## Guide d'action

### Ajouter une section

1. Ajouter une balise sémantique dans `index.html` à l'intérieur de `main`.
2. Donner à la section une classe dédiée, nommée en kebab-case.
3. Ajouter les styles correspondants dans `styles/style.css`.
4. Réutiliser les espacements, couleurs et ombres existants avant d'inventer de nouvelles valeurs.
5. Vérifier le rendu mobile avec le breakpoint existant.

### Modifier un composant

1. Modifier le HTML seulement si la structure sémantique doit changer.
2. Mettre à jour les styles dans le bloc de composant concerné.
3. Garder les sélecteurs peu spécifiques.
4. Si une valeur se répète, la transformer en token CSS dans `:root`.
5. Tester l'impact sur le mobile avant d'étendre le changement.

### Ne pas faire

- Ne pas ajouter de framework CSS.
- Ne pas ajouter de styles inline.
- Ne pas créer de structure HTML profondément imbriquée sans raison.
- Ne pas casser les classes existantes sans migration complète.