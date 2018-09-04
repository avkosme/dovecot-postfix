#!/bin/bash

sed -i 's/myhostname = mail.apline.pro/myhostname = '"$postfix_myhostname"' /' /etc/postfix/main.cf
