docker run -it --rm --name certbot \
  -v "$(PWD):/etc/letsencrypt" \
  -v "$(PWD):/var/lib/letsencrypt" \
  certbot/certbot certonly --manual