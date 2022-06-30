#!/bin/bash
source ./docker/container_name.txt
docker exec -it $CONTAINER_NAME jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''