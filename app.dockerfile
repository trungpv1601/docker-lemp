FROM php:fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt