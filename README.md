# dovecot-postfix

## Set environment


```console
# file docker-compose.yml

mail:
  environment:
    - myhostname=mail.example.org 
    - mydomain=example.org 
    - mynetworks=10.5.0.0/24
    - relayhost=relay.example.org
    - smtp_sasl_auth_enable=yes
    - smtp_sasl_password_maps=hash:/etc/postfix/sasl_passwd
    - smtp_sasl_security_options=
```      

## Set Up Postfix For Relaying Emails Through Another Mailserver 

Set env:
- relayhost=relay.example.org
- smtp_sasl_auth_enable=yes
- smtp_sasl_password_maps=hash:/etc/postfix/sasl_passwd
- smtp_sasl_security_options=


[Source: Postfix_relaying_through_another_mailserver](https://www.howtoforge.com/postfix_relaying_through_another_mailserver)