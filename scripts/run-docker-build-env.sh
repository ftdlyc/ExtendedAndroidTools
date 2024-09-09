#! /bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.

if [ -z "${DOCKER_UID}" ]; then
    echo "DOCKER_UID is null, set to current user"
    DOCKER_UID=$(id -u)
fi
if [ -z "${DOCKER_GID}" ]; then
    echo "DOCKER_GID is null, set to current group"
    DOCKER_GID=$(id -g)
fi

if [ -z "${ANDROID_NDK_PATH}" ]; then
    echo "ANDROID_NDK_PATH is null, please set this environment variable"
else
    echo "ndk path is ${ANDROID_NDK_PATH}"
    echo "run docker as user ${DOCKER_UID}:${DOCKER_GID}"
    docker run -it --rm -u ${DOCKER_UID}:${DOCKER_GID} -v "$(pwd):/ExtendedAndroidTools" -v "${ANDROID_NDK_PATH}:/android_ndk" extended-android-tools
fi
