#!/usr/bin/env bash

cd /var/www || exit
php artisan migrate:fresh --seed

php-fpm
