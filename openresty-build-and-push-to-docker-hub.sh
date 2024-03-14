#!/bin/bash
cd /Users/urizafrir/general/commit-docker/openresty
docker rm -f $(docker ps -aq); docker rmi -f $(docker images -aq) \
# Set the paths to your Dockerfiles
DOCKERFILE="backend/Dockerfile"

# Set your image names
IMAGE_NAME="commit-fargate-openresty"
IMAGE_TAG="latest"
REPOSITORY_NAME="urizaf"

# Build Python image
docker build -t $IMAGE_NAME:$IMAGE_TAG .
#docker build -t openresty-commit . 
#docker run -d -p 80:80 -p 443:443 --name commit-fargate-openresty commit-fargate-openresty

docker tag $IMAGE_NAME:$IMAGE_TAG $REPOSITORY_NAME/$IMAGE_NAME:$IMAGE_TAG
#docker run -d -p 80:80 -p 443:443 --name urizaf/commit-fargate-openresty urizaf/commit-fargate-openresty
#docker push $REPOSITORY_NAME/$IMAGE_NAME:$IMAGE_TAG
#docker push urizaf/commit-fargate-openresty:latest
