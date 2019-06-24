#!/bin/bash
echo "Building Docker image"

echo $DOCKER_PW | docker login -u $DOCKER_LOGIN --password-stdin

if [[ "$TRAVIS_BRANCH" == 'dev-1' ]]; then

  docker build -t reverse-proxy .
  docker tag reverse-proxy explorviz/reverse-proxy:dev-$TRAVIS_COMMIT
  docker tag reverse-proxy explorviz/reverse-proxy:dev

  docker build -t reverse-proxy -f Dockerfile_macos .
  docker tag reverse-proxy explorviz/reverse-proxy:macos-dev-$TRAVIS_COMMIT
  docker tag reverse-proxy explorviz/reverse-proxy:macos-dev

  docker push explorviz/reverse-proxy

elif [[ "$TRAVIS_BRANCH" == 'master' ]]; then

  docker build -t reverse-proxy .
  docker tag reverse-proxy explorviz/reverse-proxy:$TRAVIS_COMMIT
  docker tag reverse-proxy explorviz/reverse-proxy

  docker build -t reverse-proxy -f Dockerfile_macos .
  docker tag reverse-proxy explorviz/reverse-proxy:macos-$TRAVIS_COMMIT
  docker tag reverse-proxy explorviz/reverse-proxy:macos
  
  docker push explorviz/reverse-proxy

else
  echo "Unknown branch for Docker image."
fi