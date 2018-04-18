#!/bin/bash


# Change ssh password
echo root:${SSH_PASSWORD:-password} | chpasswd

# Start services
service ssh start
service nginx start