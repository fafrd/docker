#!/bin/bash

echo "Setting up turdle webapp in Docker. requires git, docker, docker-compose to be installed."

echo "Cloning turdle ..."
git clone https://github.com/fafrd/turdle

echo "Building docker images ..."
docker-compose up -d
