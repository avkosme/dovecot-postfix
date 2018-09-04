# dovecot-postfix

## Set environment


```console
# file docker-compose.yml

mail:
  environment:
    - myhostname=mail.example.org 
    - mydomain=example.org 
    - mynetworks=10.5.0.0/24
```      