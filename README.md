# Docker Squid image with http violation enabled

- Create squid.conf file in local `etc/squid/` folder
- Run the container
  ```bash
  docker run -d -p 3128:3128 -v `pwd`/etc/squid:/etc/squid/ --name squid hieulq/squid:latest
  ```
- Ref: https://github.com/hieulq/docker-squid
