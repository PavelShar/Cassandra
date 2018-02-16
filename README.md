## Cassandra: Ubuntu + OpenSSH Docker image

This is a simple image with `Ubuntu` and `OpenSSH` on board.  
Just pull it and start hacking  

[![Travis](https://img.shields.io/travis/PavelShar/Cassandra.svg?style=flat-square)][travis]
[![Docker Pulls](https://img.shields.io/docker/pulls/pavelshar/cassandra.svg?style=flat-square)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/pavelshar/cassandra.svg?style=flat-square)][hub]
[![Docker Automated build](https://img.shields.io/docker/automated/pavelshar/cassandra.svg?style=flat-square)][hub]


#### Additional Packages
* `mc`
* `wget`
* `nginx`
* `git-core`
* `curl`
* `make`

#### SSH Connection Settings
- Default user: `root`
- Default password: `password`

#### Exposed ports
This image exposes `80` and `22` default ports. For some other reasons you can use `8000-8010` ports that are also exposed.

#### Running image
Simple run: `docker run --name cassandra -p 8080:80 -p 8022:22 -d pavelshar/cassandra:latest`. This command pulls latest image, start container with name `cassandra` and map outter 8080 port to 80 inner image's port and 8022 with 22 accordingly

You can redefine ssh password using environment variable `SSH_PASSWORD` when creating container - `docker run --name cassandra -p 8080:80 -p 8022:22 -d -e SSH_PASSWORD=mysshpass pavelshar/cassandra:latest`

[hub]: https://hub.docker.com/r/pavelshar/cassandra/
[travis]: https://travis-ci.org/PavelShar/Cassandra
