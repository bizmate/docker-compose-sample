#FROM php:5-fpm
FROM php:7.4-fpm
MAINTAINER Diego Gullo <diego_gullo@bizmate.biz>

RUN apt-get update && apt-get install -y  libcurl4-gnutls-dev \
	libfreetype6-dev libmcrypt-dev libicu-dev libpq-dev \
	&& docker-php-ext-install curl \
	&& docker-php-ext-install mysqli pdo_mysql \
	&& docker-php-ext-install -j$(nproc) mcrypt \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*