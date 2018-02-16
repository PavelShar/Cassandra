#!/bin/bash

apt-get update
apt-get install -y \
    mc \
    wget \
    nginx \
    git-core \
    curl \
    make \
    locales \


locale-gen ru_RU.utf8
locale-gen en_US.utf8
update-locale LANG=en_US.utf8