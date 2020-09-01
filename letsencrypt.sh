#!/bin/bash

## Run in an ec2

# Enable EPEL
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install certbot
sudo yum install -y certbot python2-certbot-apache 

# Get cert
sudo certbot certonly --manual

# Complete the prompts, then add cert values to terraform/tls/...
# Run tf apply

# Done!
