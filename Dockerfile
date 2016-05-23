FROM resin/rpi-raspbian:jessie
MAINTAINER Cédric Blomart <cblomart@gmail.com>

EXPOSE 80 443

ADD ./Caddyfile /etc/Caddyfile
ADD ./index.html /var/http/index.html

ADD ./caddy /usr/local/bin/caddy

ENTRYPOINT [ "/usr/local/bin/caddy" ]
CMD [ "--conf", "/etc/Caddyfile" ]
