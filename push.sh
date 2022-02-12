#!/bin/bash
# docker tag dotnet6-debian11:latest tirsvad/dotnet6-debian11:latest

docker build -t tirsvad/debian_11-dotnet_6:latest .

echo "$DOCKERPASSWORD" | docker login --username tirsvad --password-stdin
docker push tirsvad/debian_11-dotnet_6:latest