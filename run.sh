#!/bin/bash

VAULT_SERVER=${VAULT_SERVER:-https://localhost}
SERVER_CRT=${SERVER_CRT:-server.crt}
SERVER_KEY=${SERVER_KEY:-server.key}

sed -i "s;%%VAULT_SERVER%%;${VAULT_SERVER};" "/etc/vault.config"
sed -i "s;%%SERVER_CRT%%;${SERVER_CRT};" "/etc/vault.config"
sed -i "s;%%SERVER_KEY%%;${SERVER_KEY};" "/etc/vault.config"

/usr/sbin/vault server -config=/etc/vault.config
