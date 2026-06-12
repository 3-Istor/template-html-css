# HTML / CSS Template

Template d'application web statique en HTML5 et CSS pur. Il sert de base propre pour créer rapidement une landing page, une maquette simple ou une page de présentation sans framework ni complexité inutile. La structure est volontairement minimale pour rester facile à comprendre, à modifier et à servir dans n'importe quel environnement.

## Démarrage rapide

Ouvre simplement `index.html` dans ton navigateur pour voir le projet tel qu'il est. Si tu préfères un serveur local, lance un serveur HTTP léger depuis la racine du dépôt.

```bash
python3 -m http.server 8080
```

Puis ouvre `http://localhost:8080`.

Si tu veux exécuter le template dans un conteneur Docker, construis puis lance l'image:

```bash
docker build -t html-css-template .
docker run --rm -p 8080:80 html-css-template
```

## Structure du projet

```text
template-html-css/
├── index.html
├── styles/
│   └── style.css
├── Dockerfile
├── deploy/
│   └── values.yaml
└── README.md
```

- `index.html`: page principale du template, avec la structure HTML sémantique.
- `styles/style.css`: feuille de style principale, avec reset, mise en page, composant central et comportement responsive.
- `Dockerfile`: image nginx qui sert le site statique.
- `deploy/values.yaml`: valeurs de déploiement pour un environnement Kubernetes / Helm.
- `README.md`: documentation humaine du projet.

## 🤖 Tu travailles avec une IA ?

Oui. Lis d'abord [ai-context.md](ai-context.md) avant de modifier le code. Ce fichier contient les règles d'architecture, de nommage, de responsive design et d'utilisation du système visuel pour aider une IA à coder sans casser la structure du template.
