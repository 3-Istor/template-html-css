## Project structure

```text
cloud-native-html-css-template/
├── README.md
├── Dockerfile
├── .gitignore
├── index.html
└── styles/
    └── style.css
```

Build the Docker image:

```bash
docker build -t html-css-template .
```

Run the container:

```bash
docker run -p 8080:80 html-css-template
```

```text
http://localhost:8080
```

## Run without Docker

You can open the HTML file directly in your browser:

```text
index.html
```

Or serve the project using a simple local HTTP server:

```bash
python3 -m http.server 8080
```

Then open:

```text
http://localhost:8080
```

## Useful URLs

```text
Local with Docker: http://localhost:8080
Local without Docker: http://localhost:8080
```
