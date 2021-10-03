# School Events Managment

Using PHP Laravel framework

## Installation

Use Docker to set up the environment

```bash
#build Dockerfile
docker build . -f docker build . -f PhpDockerfile --no-cache

#run container
docker-compose up
```

Setup backend with Laravel
```bash
#go to src/api_map folder and install packages
composer install

#Need to exit container to install node module
#You may need to install nvm to get the correct node version v12.5.0
#nvm use 6v12.5.0

#check with 
node -v

#install node module
npm install

#copy .env.example to .env

#go to php-fpm container
docker exec -it php-fpm

#api_registration folder
cd api_map

#unit test
php artisan test
```

There are APIs provided:

http://localhost:8000/register

http://localhost:8000/login
###### Email: amanda.lan2009@gmail.com
###### Password: Abcd1234

http://localhost:8000/activities

## Tips:

1. The Docker files provided will build an environment with PHP, Apache, MySQL and PHPMyAdmin. docker-compose build and docker-compose up will be helpful commands once Docker Desktop is installed.

2. MySQL will have a database initialised and accessible through the credentials provided in the docker-compose.yaml file.

3. The src folder should be used to store the code required.

4. The Docker configuration can be updated to include Composer locally if this makes builds easier.

5. PHPMyAdmin can be utilised via http://localhost:8008. The PHP app can be seen at http://localhost:8000. If these ports are used by your environment already they can be updated in the Docker config.
