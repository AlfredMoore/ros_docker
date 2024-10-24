#! /usr/bin/env bash

# Create a label from git config
GIT_LABEL="$(git branch --show-current | tr / -)"
if [[ -z "$GIT_LABEL" ]]; then
    GIT_LABEL="$(git rev-parse --short HEAD)"
fi

# Image Tag and  Container Name
export IMAGE_TAG="WiscHCI/panda-noetic:${GIT_LABEL}"
export CONTAINER_NAME="ros-panda-noetic-isolated"

# User configs
export USERNAME=$(whoami)
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
# export DISPLAY=${DISPLAY}