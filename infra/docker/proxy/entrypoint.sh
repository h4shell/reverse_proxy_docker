#!/bin/bash

echo "
server {
    listen 0.0.0.0:8080;
    server_name example.com www.example.com;  # Sostituire con il tuo dominio
    location / {
        proxy_pass http://192.168.1.1:80;
    }
}
" > /opt/bitnami/nginx/conf/server_blocks/www.example.com.conf

echo "
server {
    listen 0.0.0.0:8080;
    server_name www.h4sh.it;  # Sostituire con il tuo dominio
    location / {
        proxy_pass http://192.168.1.167:80;
    }
}
" > /opt/bitnami/nginx/conf/server_blocks/www.h4sh.it.conf


nginx -g 'daemon off;'