#!/usr/bin/env bash

cat > /etc/opendkim/TrustedHosts <<EOF
# OPENDKIM TRUSTED HOSTS
# To use this file, uncomment the #ExternalIgnoreList and/or the #InternalHosts
# option in /etc/opendkim.conf then restart OpenDKIM. Additional hosts
# may be added on separate lines (IP addresses, hostnames, or CIDR ranges).
# The localhost IP (127.0.0.1) should always be the first entry in this file.
127.0.0.1
::1
10.5.0.6
10.5.0.8
*.apline.pro
EOF
