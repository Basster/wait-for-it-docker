FROM bash:5.2

ADD https://github.com/vishnubob/wait-for-it/raw/refs/heads/master/wait-for-it.sh /usr/bin/wait-for-it
RUN set -eux; \
    chmod +x /usr/bin/wait-for-it;

ENTRYPOINT [ "wait-for-it" ]
