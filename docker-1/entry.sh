#!/bin/bash

docker-compose -f /usr/src/app/customservice/docker-compose.yml down
docker-compose -f /usr/src/app/customservice/docker-compose.yml up
