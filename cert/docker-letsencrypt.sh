#!/bin/bash

## Run in an ec2 or docker

# Enable EPEL
yum install -yv https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install certbot
yum install -yv certbot python2-certbot-apache --skip-broken

# Get cert
certbot certonly --manual

# Complete the prompts, then add cert values to terraform/tls/...
# Run tf apply

# Done!
