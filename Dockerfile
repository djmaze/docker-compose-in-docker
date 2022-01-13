ARG DOCKER_VERSION=20.10.12
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=2.2.3
RUN mkdir -p /root/.docker/cli-plugins \
 && wget https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-linux-x86_64 -O /root/.docker/cli-plugins/docker-compose \
 && chmod u+x /root/.docker/cli-plugins/docker-compose