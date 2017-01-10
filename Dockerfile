FROM docker

COPY requirements.txt .

RUN apk add --no-cache \
    python3 \
    && pip3 install -r requirements.txt \
    && rm -rf /root/.cache $(find / -regex '.*\.py[co]')

ENTRYPOINT ["docker-compose"]
