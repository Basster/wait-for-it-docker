FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    wait-for-it \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "wait-for-it" ]
