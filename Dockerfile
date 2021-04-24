FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs

RUN apt-get update && \
    apt-get install -y gcc make libssh2-1-dev libssh2-1 nano
RUN curl http://pecl.php.net/get/ssh2-1.2.tgz -o ssh2.tgz && \
    pecl install ssh2 ssh2.tgz && \
    docker-php-ext-enable ssh2 && \
    rm -rf ssh2.tgz

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip intl

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN rm -rf /var/www/html

WORKDIR /var/www

COPY src /var/www
COPY ./startcontainer.sh .

RUN chown www-data:www-data /var/www -R
RUN chmod 775 /var/www -R

USER www-data

CMD ["/var/www/startcontainer.sh"]
