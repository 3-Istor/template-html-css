# template-html-css

## Rôle

Modèle de dépôt applicatif statique : site HTML/CSS servi par Nginx, accompagné d’une CI Docker et de valeurs de déploiement Kubernetes.

## Technologies

HTML5, CSS, Nginx Alpine, Docker, YAML Helm et GitHub Actions.

## Entrées

| Origine / destinataire | Contenu et transmission |
| --- | --- |
| CMP / app-templates | Sélection comme template GitHub ; `k3s-gitops-app` configure `deploy/values.yaml` dans la copie applicative. |
| Développeurs | Pages, styles et contenu du site. |

## Sorties et consommateurs

| Origine / destinataire | Contenu et transmission |
| --- | --- |
| Dépôts applicatifs / développeurs | Site, Dockerfile, CI et valeurs de déploiement copiés lors de la création GitHub. |
| GHCR / cluster cible | Image `<owner>/<repo>` contenant le site servi par Nginx. |
| K3s / Argo CD / infra-templates | `deploy/values.yaml` de la copie applicative, consommé avec le chart générique. |

## Documentation CNP

[Fiche `template-html-css` et workflows inter-repo](https://github.com/3-Istor/cnp-docs/blob/main/docs/04-templates/00-github-repositories-landscape.md#template-html-css).

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
