#!/bin/sh

CONTAINER_FIRST_STARTUP="CONTAINER_FIRST_STARTUP"
if [ ! -e /$CONTAINER_FIRST_STARTUP ]; then
    touch /$CONTAINER_FIRST_STARTUP
    cd /var/www
    composer install
    rm -rf node_modules package-lock.json
    npm install
    npm install -g laravel-echo-server
    npm run dev
fi
