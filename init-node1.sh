#!/bin/bash
docker run --rm -it --name node1 \
    --net=db-net \
    --ip=192.168.10.11 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -v $(pwd)/conf/galera-node1.cnf:/etc/mysql/conf.d/galera.cnf \
    -v $(pwd)/data/node1/mysql:/var/lib/mysql \
    mariadb:10.2 --wsrep-new-cluster