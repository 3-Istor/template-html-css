FROM nginx:1.28.0-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY styles /usr/share/nginx/html/styles

EXPOSE 80