FROM php:8.3-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git unzip curl libpq-dev libzip-dev zip \
    && docker-php-ext-install pdo pdo_pgsql zip

# Set working directory
WORKDIR /var/www/html

# Copy app code
COPY . .

# Laravel storage & permissions
RUN chmod -R 755 storage bootstrap/cache

# Serve with PHP's built-in server (or use Nginx + Supervisor if preferred)
CMD php artisan serve --host=0.0.0.0 --port=8000
