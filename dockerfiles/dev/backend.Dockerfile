FROM php:8-fpm-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

ENV APP_ENV_VARS /var/www/html/.env
ENV APP_SCRIPT /var/www/html/public/index.php

EXPOSE 8082

CMD ["/usr/local/bin/php", "artisan", "serve", "--host=0.0.0.0", "--port=8082"]
