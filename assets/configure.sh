#!/bin/bash

[ ! -z "$postfix_myhostname"  ]  &&  /opt/postfix.sh  || exit 0 
