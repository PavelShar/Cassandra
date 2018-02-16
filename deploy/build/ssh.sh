#!/bin/bash

# Install openssh-server
# Configure sshd_config

apt-get install openssh-server -y

echo "UseDNS no" | tee -a /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" | tee -a /etc/ssh/sshd_config

# Allow password login
sed -i 's/prohibit-password/yes/' /etc/ssh/sshd_config