# Use an official MediaWiki image as the base
FROM mediawiki

# Copy additional folders to the image
COPY ./composer.json /var/www/html/composer.local.json
COPY ./LocalSettings.php /var/www/html/LocalSettings.php
COPY ./extensions /var/www/html/extensions

RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer
RUN composer update