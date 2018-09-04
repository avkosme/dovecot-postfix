FROM avkosme/centos

RUN yum -y update
RUN yum -y install epel-release

RUN yum -y install rsyslog

RUN yum -y install postfix
RUN yum -y install openssl

ADD assets/openssl_generate.sh /opt/openssl_generate.sh
RUN /bin/bash -c 'chmod +x /opt/openssl_generate.sh'
RUN /opt/./openssl_generate.sh

ADD assets/main.cf.sh /opt/main.cf.sh
RUN /bin/bash -c 'chmod +x /opt/main.cf.sh'
RUN /opt/./main.cf.sh

ADD assets/master.cf.sh /opt/master.cf.sh
RUN /bin/bash -c 'chmod +x /opt/master.cf.sh'
RUN /opt/./master.cf.sh

RUN yum -y install dovecot

ADD assets/10-master.conf.sh /opt/10-master.conf.sh
RUN /bin/bash -c 'chmod +x /opt/10-master.conf.sh'
RUN /opt/./10-master.conf.sh

ADD assets/10-auth.conf.sh /opt/10-auth.conf.sh
RUN /bin/bash -c 'chmod +x /opt/10-auth.conf.sh'
RUN /opt/./10-auth.conf.sh

ADD assets/10-mail.conf.sh /opt/10-mail.conf.sh
RUN /bin/bash -c 'chmod +x /opt/10-mail.conf.sh'
RUN /opt/./10-mail.conf.sh

ADD assets/20-pop3.conf.sh /opt/20-pop3.conf.sh
RUN /bin/bash -c 'chmod +x /opt/20-pop3.conf.sh'
RUN /opt/./20-pop3.conf.sh

RUN yum -y install opendkim

ADD assets/opendkim.conf.sh /opt/opendkim.conf.sh
RUN /bin/bash -c 'chmod +x /opt/opendkim.conf.sh'
RUN /opt/./opendkim.conf.sh

ADD assets/TrustedHosts.sh /opt/TrustedHosts.sh
RUN /bin/bash -c 'chmod +x /opt/TrustedHosts.sh'
RUN /opt/./TrustedHosts.sh

ADD assets/KeyTable.sh /opt/KeyTable.sh
RUN /bin/bash -c 'chmod +x /opt/KeyTable.sh'
RUN /opt/./KeyTable.sh

ADD assets/SigningTable.sh /opt/SigningTable.sh
RUN /bin/bash -c 'chmod +x /opt/SigningTable.sh'
RUN /opt/./SigningTable.sh

ADD assets/opendkim_generate.sh /opt/opendkim_generate.sh
RUN /bin/bash -c 'chmod +x /opt/opendkim_generate.sh'
RUN /opt/./opendkim_generate.sh

ADD assets/configure.sh /opt/configure.sh
RUN /bin/bash -c 'chmod +x /opt/configure.sh'
ADD assets/postfix.sh /opt/postfix.sh
RUN /bin/bash -c 'chmod +x /opt/postfix.sh'
RUN /opt/configure.sh 

RUN systemctl enable postfix.service
RUN systemctl enable dovecot.service
RUN systemctl enable opendkim.service
RUN systemctl enable rsyslog.service

RUN yum clean all

