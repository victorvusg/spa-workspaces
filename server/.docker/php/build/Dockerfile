FROM php:7.2-fpm
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN pecl install -o -f redis \
    &&  rm -rf /tmp/pear
RUN apt update && apt-get install  --no-install-recommends -y procps
RUN apt install -y supervisor
RUN docker-php-ext-install pcntl
RUN docker-php-ext-enable redis
