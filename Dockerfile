FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN set -ex && apk --no-cache add git zip unzip libzip-dev libmcrypt-dev wget postgresql-dev

RUN docker-php-ext-install zip bcmath pdo pdo_mysql pdo_pgsql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install laravel installer
RUN composer global require laravel/installer

# Add composer vendor/bin to PATH
RUN echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> /etc/profile