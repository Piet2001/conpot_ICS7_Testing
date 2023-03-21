#!/bin/sh
docker-compose down
docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)
apt-get update && apt-get upgrade -y
git fetch
git pull
docker-compose up --build -d