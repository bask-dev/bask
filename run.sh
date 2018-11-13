#! /bin/sh

docker build -f Dockerfile -t bask-image .
docker rm -f bask-container
docker run -d --restart always --network host --name="bask-container" -i bask-image
docker container prune -f
docker image prune -f