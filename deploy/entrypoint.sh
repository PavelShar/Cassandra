#!/bin/bash


# Apply environment
# Set SSH password
echo root:${SSH_PASSWORD:-password} | chpasswd


# Run services
service ssh start
service nginx start
