#!/bin/bash

# Set the paths to your Dockerfiles
DOCKERFILE_PYTHON="backend/Dockerfile"
DOCKERFILE_NGINX="frontend/Dockerfile"

# Set your image names
IMAGE_NAME_PYTHON="commit-fargate-python-server"
IMAGE_NAME_NGINX="commit-fargate-nginx"
IMAGE_TAG_PYTHON="latest"
IMAGE_TAG_NGINX="latest"
REPOSITORY_NAME="urizaf"

# Build Python image
docker build -t $IMAGE_NAME_PYTHON:$IMAGE_TAG_PYTHON -f $DOCKERFILE_PYTHON ./backend
#docker build -t urizaf/commit-fargate-python-server:latest -f backend/Dockerfile ./backend

docker tag $IMAGE_NAME_PYTHON:$IMAGE_TAG_PYTHON $REPOSITORY_NAME/$IMAGE_NAME_PYTHON:$IMAGE_TAG_PYTHON
docker push $REPOSITORY_NAME/$IMAGE_NAME_PYTHON:$IMAGE_TAG_PYTHON


# Build Nginx image
docker build -t $IMAGE_NAME_NGINX:$IMAGE_TAG_NGINX -f $DOCKERFILE_NGINX ./frontend

docker tag $IMAGE_NAME_NGINX:$IMAGE_TAG_NGINX $REPOSITORY_NAME/$IMAGE_NAME_NGINX:$IMAGE_TAG_NGINX
docker push $REPOSITORY_NAME/$IMAGE_NAME_NGINX:$IMAGE_TAG_NGINX
