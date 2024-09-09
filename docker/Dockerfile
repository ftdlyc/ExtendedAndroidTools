# Copyright (c) Meta Platforms, Inc. and affiliates.

FROM ubuntu:22.04

COPY jammy-install-deps.sh /
COPY download-ndk.sh /

RUN bash -c "/jammy-install-deps.sh"

WORKDIR /ExtendedAndroidTools

ENTRYPOINT ["/bin/bash"]
