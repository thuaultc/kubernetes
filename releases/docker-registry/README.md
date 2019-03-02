# Generate random password
< /dev/urandom tr -dc A-Z-a-z-0-9 | head -c20

# Generate htpasswd
docker run --entrypoint htpasswd registry:2 -Bbn user password > ./htpasswd
