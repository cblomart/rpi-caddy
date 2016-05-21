FROM scratch
MAINTAINER Cédric Blomart <cblomart@gmail.com>

EXPOSE 80 443

ADD ./Caddyfile /etc/Caddyfile
ADD ./index.html /var/http/index.html

ADD ./caddy /bin/caddy

ENTRYPOINT [ "/bin/caddy" ]
CMD [ "--conf", "/etc/Caddyfile" ]
