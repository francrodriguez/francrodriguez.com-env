FROM composer:2.4.4 as composer
FROM php:8.1.12-fpm
# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    locales \
    libzip-dev \
    git

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql && \
    docker-php-ext-install zip && \
    docker-php-ext-install exif

# Install GD
RUN apt-get -y update && \
    apt-get --no-install-recommends install -y libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install gd
COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www
USER 1000

