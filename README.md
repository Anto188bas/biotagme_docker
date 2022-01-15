# biotagme_docker
docker for biotagme gui

Installation:
 - clone the repository
 - create the directory site under Nginx one:
 - clone the biotagme_laravel repository under site directory
 - go to main directory and run ./init.sh for data downloading
 - run docker-compose up
 - access into biotagmeApp container as root user: docker exec -u root -it <id_container> /bin/bash
 - run the following commands

       composer install
       php artisan migrate
       rm -rf node_modules package-lock.json
       npm install
       npm install -g laravel-echo-server
       npm run dev
