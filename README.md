# biotagme_docker
docker for biotagme gui

The gui is available at: http://biotagme.adimaria.site

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
       screen
 - exit from the previous container and access to the mysql one. then run the following command:
        
       cd /data
       mysql -u biouser -p Biotagme < dump.sql
       
 - exit from the previous container and access to neo4j one. then run the following command:
        
        cd data
        rm -r *
        cd ..
        bin/neo4j-admin import --database='biotagme' --delimiter='\t' --nodes=import/Nodes.csv --relationships=edges=import/Edges.csv
        exit from the container and restart it, then run it egain
        bin/cypher-shell
        user: neo4j
        passwd: neo4j
        new pass: biotagme
