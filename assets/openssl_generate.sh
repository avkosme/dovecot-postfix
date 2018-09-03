#!/usr/bin/env bash

mkdir /etc/postfix/ssl && \
cd /etc/postfix/ssl && \
openssl req -x509 -nodes -newkey \
rsa:2048 -keyout server.key -out \
server.crt -nodes -days 365 \
-subj "/C=RU/ST=Rostov-on-Don/L=Rostov-on-Don/O=apline.pro/OU=apline.pro/CN=mail.apline.pro/emailAddress=tech@apline.pro/"
