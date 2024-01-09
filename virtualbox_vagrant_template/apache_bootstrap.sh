#!/bin/bash

# Upgrade the OS
apt update && apt upgrade -y

# Install and enable Apache2 daemon. Deletes the default configuration
apt install apache2 -y
a2dissite 000-default
systemctl enable apache2 && systemctl restart apache2