#!/usr/bin/env sh

docker run -d -p 3128:3128 -v `pwd`/etc/squid:/etc/squid/ --name squid hieulq/squid:latest

