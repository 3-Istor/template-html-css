FROM nginx:1.31.6-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY styles /usr/share/nginx/html/styles

EXPOSE 80