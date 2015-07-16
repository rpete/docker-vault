FROM phusion/baseimage

ENV VAULT_VERSION 0.2.0_linux_amd64

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y wget zip && cd /opt && wget https://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}.zip && unzip vault_${VAULT_VERSION}.zip && rm -f vault_${VAULT_VERSION}.zip
ADD vault.config /etc/
RUN  mkdir /etc/my_init.d
ADD run.sh /etc/my_init.d/run.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
