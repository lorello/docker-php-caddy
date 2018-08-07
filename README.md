# PHP  

## Local development environment

Local environment with PHP-fpm official image
with the addiction of Caddy webserver. To start a fresh
dev environment with database initialized run:

    $ docker-compose up --build

Open browser on [localhost:2015](http://localhost:2015)

Public pages are under `public` directory

Access database using CLI with:

    $ docker-compose exec db mysql 


## Reference

 - [PHP docker image](https://hub.docker.com/_/php/)
 - [Caddy](https://caddyserver.com/tutorial/caddyfile)
 - [MySQL docker image](https://hub.docker.com/_/mysql)

