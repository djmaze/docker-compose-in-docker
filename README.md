# Docker Compose in a container

[![Build Status](https://ci.strahlungsfrei.de/api/badges/djmaze/docker-compose-in-docker/status.svg)](https://ci.strahlungsfrei.de/djmaze/docker-compose-in-docker)
[![Docker Stars](https://img.shields.io/docker/stars/mazzolino/docker-compose.svg)](https://hub.docker.com/r/mazzolino/docker-compose/) [![Docker Pulls](https://img.shields.io/docker/pulls/mazzolino/docker-compose.svg)](https://hub.docker.com/r/mazzolino/docker-compose/)

This is a docker image which contains `docker` and `docker compose`. It is useful for building apps inside a CI environment such as [Drone](https://docs.drone.io/).

## Usage

You can mount a docker socket from your host or from a `docker:dind` container into this container.

- Replace `<version>` with `latest` or one of the [tags](https://hub.docker.com/r/mazzolino/docker-compose/tags).
- The `<ARGS>` should contain arguments for `docker compose`, e.g. `build app`.

```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock:ro mazzolino/docker:<version> <ARGS>
```

## Example usage

```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock:ro mazzolino/docker:2.2.3 build app
```
