#!/bin/bash
# git clone https://github.com/druyoung/WTW.git drewgit
# install latest docker
wget -qO- https://get.docker.com/ | sh
cd drewgit
# start nginx container with mount points
docker container run -d -p 3200:3200 -v $(pwd):/etc/nginx/config.d/ -v $(pwd): /var/lib/www/html/errors --name druginx nginx
