#!/bin/bash

# Set the name for the container
CONTAINER_NAME="xeyes-container"

# Check if the container with the same name is already running
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Container '$CONTAINER_NAME' is already running."
    exit 1
fi

# Run the Docker container with X11 socket and display server mapping
docker run -it --rm \
    --name $CONTAINER_NAME \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    xeyes
