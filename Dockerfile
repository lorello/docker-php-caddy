FROM php:5.6-fpm

# Install application dependencies
RUN curl --silent --show-error --fail --location \
      --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
      "https://caddyserver.com/download/linux/amd64?plugins=http.expires,http.realip&license=personal" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy \
    && chmod 0755 /usr/bin/caddy \
    && /usr/bin/caddy -version 

RUN docker-php-ext-install mbstring pdo pdo_mysql mysqli 

WORKDIR /srv/app/

COPY ./php/php.ini /usr/local/etc/php/php.ini
COPY ./app /srv/app
COPY Caddyfile /etc/Caddyfile
COPY Dockerfile /

RUN chown -R www-data:www-data /srv/app

EXPOSE 2015 

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile", "--log", "stdout"]

