FROM ubuntu:latest

RUN echo "root ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER root

ADD . /.docker
RUN chown -R root:root /.docker
RUN chmod -R 755 /.docker


# Build project
# Install and configure dependencies
RUN \
    sh /.docker/deploy/build/base.sh && \
    sh /.docker/deploy/build/ssh.sh


# Expose defaults 80 and 22 ports
# Also expose additional set of ports from 8000 to 8010
EXPOSE 80 22


CMD  \
    # Change ssh password
    echo root:${SSH_PASSWORD:-password} | chpasswd && \

    # Start services
    service ssh start && \
    service nginx start && \

    # Create daemon
    sh /.docker/deploy/daemon.sh
