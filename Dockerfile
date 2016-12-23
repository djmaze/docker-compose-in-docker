FROM docker

COPY requirements.txt .

RUN apk add --no-cache \
    python3 \
    && pip3 install -r requirements.txt \
    && rm -rf /tmp /root/.cache /var/cache/apk $(find / -regex '.*\.py[co]')

ENTRYPOINT ["docker-compose"]
