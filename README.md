# Docker Compose in a container

This is a docker image which contains `docker` and `docker compose`. It is useful for building apps inside a CI environment such as [Drone](https://docs.drone.io/).

## Usage

You can mount a docker socket from your host or from a `docker:dind` container into this container.

- Replace `<version>` with `latest` or one of the tags.
- The `<ARGS>` should contain arguments for `docker compose`, e.g. `build app`.

```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock:ro mazzolino/docker:<version> <ARGS>
```

## Example usage

```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock:ro mazzolino/docker:2.2.3 build app
```
