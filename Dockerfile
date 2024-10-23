FROM php:apache

# install required packages
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zlib1g-dev \
    default-mysql-client \
    imagemagick \
    git \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli zip

RUN a2enmod rewrite

WORKDIR /var/www/html

# download Omeka
RUN curl -LO https://github.com/omeka/Omeka/releases/download/v3.1.2/omeka-3.1.2.zip \
    && unzip omeka-3.1.2.zip \
    && cp -r omeka-3.1.2/. ./ \
    && rm -rf omeka-3.1.2.zip omeka-3.1.2

# change permissions
RUN chown -R www-data:www-data /var/www/html/files \
    && chmod -R 775 /var/www/html/files

# copy mysql configuration
COPY ./db.ini /var/www/html/db.ini

EXPOSE 80
