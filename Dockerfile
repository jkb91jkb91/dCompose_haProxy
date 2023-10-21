FROM haproxy:1.8

RUN apt-get update && apt-get install -y \
    inetutils-ping \
    curl \
    certbot && \
    mkdir /srv/logs && \
    touch /srv/logs/haproxy

COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

