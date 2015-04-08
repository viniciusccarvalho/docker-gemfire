# docker-gemfire
Gemfire on docker

Starts a gemfire single node based on a spring boot application.

This allows you to connect from gfsh on jmx 1099, the caveat for that is that you need to expose the HOSTNAME as the docker host and not the container. So to run this docker container just use

```
docker run -d -e HOSTNAME=192.168.59.103 -p 1099:1099 -p 8080:8080 -p 40404:40404 viniciusccarvalho/gemfire-server
```
