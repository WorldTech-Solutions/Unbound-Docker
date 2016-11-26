#!/bin/bash
## Build
docker build -t unbound-build unbound-build/
docker run -it --rm -v $PWD:/binary:z unbound-build
docker build -t unbound-server .

## Kill 
docker rm --force $(docker ps -aq --filter ancestor=unbound-server)
## Start
docker run -d --name unbound-server --restart always -p 127.0.0.1:53:53/udp unbound-server
