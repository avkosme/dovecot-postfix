#!/usr/bin/env bash

cat > /etc/opendkim/KeyTable <<EOF
# OPENDKIM KEY TABLE
# To use this file, uncomment the #KeyTable option in /etc/opendkim.conf,
# then uncomment the following line and replace example.com with your domain
# name, then restart OpenDKIM. Additional keys may be added on separate lines.

#default._domainkey.example.com example.com:default:/etc/opendkim/keys/default.private
mail._domainkey.apline.pro apline.pro:mail:/etc/opendkim/keys/apline.pro/mail.private
EOF
