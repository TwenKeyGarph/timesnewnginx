#!/bin/bash
# script for renew certificate manual DNS-01 challenge

docker run --volume ./ssl:/etc/letsencrypt/ -it certbot/certbot certonly --manual --preferred-challenges dns --email EMAIL -d DOMAIN -d *.DOMAIN --key-type rsa --agree-tos
