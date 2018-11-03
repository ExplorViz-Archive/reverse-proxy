# ExplorViz Reverse Proxy

[![Dockerhub Pulls](https://img.shields.io/docker/pulls/explorviz/reverse-proxy.svg)](https://hub.docker.com/r/explorviz/reverse-proxy)

Automated docker build for the ExplorViz reverse proxy.

## Linux

Run with `docker run -d --name explorviz-reverse-proxy -p 8080:8080 explorviz/reverse-proxy`.

For local development with Eclipse (fixed port 8080), run with: Run with `docker run -d --network host --name explorviz-reverse-proxy explorviz/reverse-proxy`.

## macOS / Windows Version 18.06.1-ce-win73 

For local development with Eclipse, run with: `docker run -d --name explorviz-reverse-proxy -p 8080:8080 explorviz/reverse-proxy:macos`.

## Windows pre Version 18.06.1-ce-win73 

For local development with Eclipse, run with `docker run -d --name explorviz-reverse-proxy -p 8080:8080 explorviz/reverse-proxy`.

Access the proxy using the docker machine IP adress. To find the IP addres,run `docker-machine ip`.
