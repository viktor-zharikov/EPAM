#!/bin/bash

sudo docker build -t localhost:5000/nginx -t nginx:alpine .

sudo docker build -t localhost:5000/httpd -t httpd:alpine . --file=Dockerfilehttpd

sudo docker run -d -p 5000:5000 --name registry registry:2

sudo docker push localhost:5000/nginx

sudo docker push localhost:5000/httpd

sudo docker volume create htdocs

sudo rm -rf /var/lib/docker/volumes/htdocs/_data

sudo ln -s "$PWD"/data/ /var/lib/docker/volumes/htdocs/_data 

sudo docker-compose up
