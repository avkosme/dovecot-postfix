#!/usr/bin/env bash

cat > /etc/opendkim/SigningTable <<EOF
# OPENDKIM SIGNING TABLE
# This table controls how to apply one or more signatures to outgoing messages based
# on the address found in the From: header field. In simple terms, this tells
# OpenDKIM "how" to apply your keys.

# To use this file, uncomment the SigningTable option in /etc/opendkim.conf,
# then uncomment one of the usage examples below and replace example.com with your
# domain name, then restart OpenDKIM.

# WILDCARD EXAMPLE
# Enables signing for any address on the listed domain(s), but will work only if
# "refile:/etc/opendkim/SigningTable" is included in /etc/opendkim.conf.
# Create additional lines for additional domains.

#*@example.com default._domainkey.example.com

# NON-WILDCARD EXAMPLE
# If "file:" (instead of "refile:") is specified in /etc/opendkim.conf, then
# wildcards will not work. Instead, full user@host is checked first, then simply host,
# then user@.domain (with all superdomains checked in sequence, so "foo.example.com"
# would first check "user@foo.example.com", then "user@.example.com", then "user@.com"),
# then .domain, then user@*, and finally *. See the opendkim.conf(5) man page under
# "SigningTable" for more details.

#example.com default._domainkey.example.com
*@apline.pro mail._domainkey.apline.pro
EOF

