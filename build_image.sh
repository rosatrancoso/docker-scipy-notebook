#!/bin/bash -x

tag=`git rev-parse --short=8 HEAD`
echo "tag=$tag"
#time docker build -t mamba_gis -f Dockerfile.mamba_gis . --no-cache 2>&1  | tee build.log
time docker build -t mamba_gis -f Dockerfile.mamba_gis . 2>&1  | tee build.log

docker tag mamba_gis docker-scipy-notebook_scipy_gis
docker tag mamba_gis rosatrancoso/docker-scipy-notebook_scipy_gis
docker tag mamba_gis rosatrancoso/docker-scipy-notebook_scipy_gis:$tag


#