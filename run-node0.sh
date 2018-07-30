#!/bin/bash
docker run -d --name node0 \
    --restart=always \
    --net=db-net \
    --ip=192.168.10.10 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -v $(pwd)/conf/galera-node0.cnf:/etc/mysql/conf.d/galera.cnf \
    -v $(pwd)/data/node0/mysql:/var/lib/mysql \
    mariadb:10.2