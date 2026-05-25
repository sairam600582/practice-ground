#!/bin/bash

# author: flow

# 2026-06-19

set -x

# update apt-get update

apt-get update

# install docker
apt-get install -y docker.io

# docker login
docker login

# pull image

docker pull sairam600582/demo-python:v1

# run container
docker run -d -p 5000:5000 sairam600582/demo-python:v1
