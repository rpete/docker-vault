# docker-vault
Build out a container to run the Vault server (vaultproject.io)

```

$>docker run --cap-add IPC_LOCK -d --expose=8200 -p 8200:8200 -v /etc/pki/tls/private/server.key:/dev/shm/server.key -v /etc/pki/tls/certs/server.crt:/dev/shm/server.crt -e VAULT_SERVER="<SERVERNAME>"  --name vault <IMAGE NAME>
```
