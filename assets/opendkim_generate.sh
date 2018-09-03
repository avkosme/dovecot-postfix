#!/usr/bin/env bash

MYDOMAIN=apline.pro

cd /etc/opendkim/keys && \
mkdir ${MYDOMAIN} && \
cd ${MYDOMAIN} && \
opendkim-genkey -s mail -d ${MYDOMAIN} && \
chown opendkim:opendkim mail.private