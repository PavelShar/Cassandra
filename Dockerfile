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

EXPOSE 80 22 8000-8010


CMD sh /.docker/deploy/entrypoint.sh && sh -c "while true; do sleep 1; done"
