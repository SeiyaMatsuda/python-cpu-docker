#!/bin/bash
source ./docker/container_name.txt
docker exec -it $CONTAINER_NAME /bin/bash