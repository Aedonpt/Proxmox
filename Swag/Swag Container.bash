mkdir -p /docker/swag

docker create \
  --name=swag \
  --cap-add=NET_ADMIN \
  -e TZ=Europe/Lisbon \
  -e URL=nezumi.duckdns.org \
  -e SUBDOMAINS=wildcard \
  -e VALIDATION=duckdns \
  -e DUCKDNSTOKEN=373c5eef-3b4c-4a22-9b60-dd6e30215742 \
  -e EMAIL=aguilar.of.berna@pm.me \
  -e ONLY_SUBDOMAINS=false \
  -e STAGING=false \
  -p 443:443 \
  -p 80:80 \
  -v /docker/swag:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/swag