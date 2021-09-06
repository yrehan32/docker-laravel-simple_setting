FROM php:7.4-fpm-alpine

RUN apk add libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev gd libzip-dev zip

RUN docker-php-ext-install pdo pdo_mysql sockets gd zip
RUN curl -sS https://getcomposer.org/installer​ | php -- \
     --install-dir=/usr/local/bin --filename=composer

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk add shadow && usermod -u 1000 www-data && groupmod -g 1000 www-data
