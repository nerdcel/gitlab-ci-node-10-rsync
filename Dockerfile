FROM node:10
LABEL maintainer="Marcel Hieke <office@marcelhieke.com>"

# Install rsync and openssh-client
RUN apt-get update && apt-get install -yq --no-install-recommends\
    rsync \
    openssh-client \
    # Install php 7.2
    libapache2-mod-php7.2 \
    php7.2-cli \
    php7.2-json \
    php7.2-curl \
    php7.2-fpm \
    php7.2-gd \
    php7.2-ldap \
    php7.2-mbstring \
    php7.2-mysql \
    php7.2-soap \
    php7.2-sqlite3 \
    php7.2-xml \
    php7.2-zip \
    php7.2-intl \
    php-imagick \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
    
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
