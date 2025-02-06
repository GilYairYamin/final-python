#!/bin/bash

cd /home/ec2-user/app

docker stop final-proj-container || true
docker rm final-proj-container || true

docker pull gilyair/final-proj-app:latest

docker run -d -p 5000:5000 --name final-proj-container gilyair/final-proj-app:latest
