#!/usr/bin/sh

JULIA_VERSION=$1
PYTHON_VERSION=$2
DEBIAN_VERSION=$3

echo "Downloading Julia Dockerfile for version ${JULIA_VERSION}"
curl -s -o Dockerfile "https://raw.githubusercontent.com/docker-library/julia/master/${JULIA_VERSION}/${DEBIAN_VERSION}/Dockerfile"

if [ ! -f "Dockerfile" ]; then
    exit 1
fi

echo "Patching Julia Dockerfile"
sed -i \
-e "s/FROM debian:${DEBIAN_VERSION}-slim/FROM python:${PYTHON_VERSION}-${DEBIAN_VERSION}-slim/g" \
-e 's/CMD \[\"julia\"\]/# install PyJulia\nRUN python -m pip install julia\nRUN julia -e \"using Pkg; pkg\\\"add PyCall\\\"; pkg\\\"precompile\\\";\"\nCMD \[\"julia\"\]/g' \
Dockerfile