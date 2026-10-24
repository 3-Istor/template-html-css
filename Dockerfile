FROM nginxinc/nginx-unprivileged:1.31.6-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY styles /usr/share/nginx/html/styles

# Restated from the base image so the Dockerfile scan sees a non-root user.
USER 101

EXPOSE 8080
