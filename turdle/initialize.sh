#!/bin/bash

echo "Setting up turdle webapp in Docker. requires git, docker, docker-compose to be installed."
git clone https://github.com/fafrd/turdle
docker-compose up -d
