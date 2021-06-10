FROM php:8.0-fpm
WORKDIR /app
RUN apt-get update
RUN apt install -y curl zip unzip
RUN curl -s https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/app"]