#!/bin/bash
docker network create -d bridge \
    --subnet=192.168.20.0/16 \
    db-net
