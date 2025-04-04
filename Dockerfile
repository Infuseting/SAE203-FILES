FROM php:8.0-apache

# Update and install required dependencies
RUN apt-get update && \
    apt-get install -y libmariadb-dev && \
    docker-php-ext-install mysqli

# Set the Apache document root
ENV APACHE_DOCUMENT_ROOT=/var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]