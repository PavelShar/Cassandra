#!/bin/bash


# Create daemon process
while true
do
sleep 1
done

# Apply environment
# Set SSH password
echo root:${SSH_PASSWORD:-password} | chpasswd


# Run services
service ssh start
service nginx start
