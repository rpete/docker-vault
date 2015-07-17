FROM phusion/baseimage:0.9.16

ENV VAULT_VERSION 0.2.0_linux_amd64

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y wget zip && cd /opt && wget https://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}.zip && unzip vault_${VAULT_VERSION}.zip && mv vault /usr/sbin/ && rm -f vault_${VAULT_VERSION}.zip && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ADD vault.config /etc/
RUN mkdir -p /etc/service/vault
ADD run.sh /etc/service/vault/run
