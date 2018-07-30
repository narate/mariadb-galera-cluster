#!/bin/bash
docker run -d --name node2 \
    --restart=always \
    --net=db-net \
    --ip=192.168.10.12 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -v $(pwd)/conf/galera-node2.cnf:/etc/mysql/conf.d/galera.cnf \
    -v $(pwd)/data/node2/mysql:/var/lib/mysql \
    mariadb:10.2