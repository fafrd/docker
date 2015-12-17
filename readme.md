# Docker images

This repo contains some docker images I've created. (right now there's only one project here.)

## turdle

This folder contains a docker-compose.yml that builds a simple webapp I made for my databases class called Turdle (see https://github.com/fafrd/turdle). It's basically a LEMP server in three containers: one for nginx, one for php-fpm, and one for mariadb.

Running initialize.sh will clone the Turdle repo and run `docker-compose up -d` to build and run the images. docker-compose.yml will mount two volumes: it mounts the cloned repo into the nginx and php containers, and mounts the database in a folder called database.
