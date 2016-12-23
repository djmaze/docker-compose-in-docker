# Docker Compose in a container

This Docker image just contains Docker and Docker Compose. You can use it like this:

    docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock mazzolino/docker-compose <ARGS>
