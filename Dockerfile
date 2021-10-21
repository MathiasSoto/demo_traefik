FROM php:7.4-fpm-alpine

RUN apk add --no-cache --update \
    postgresql-dev

RUN docker-php-ext-install \
    pdo_pgsql \
    pgsql

WORKDIR /var/www

EXPOSE 9000
CMD ["php-fpm"]