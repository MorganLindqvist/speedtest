#!/bin/bash

VER=1.2.0

if [[ $1 == "linux/amd64" ]] ; then
  curl -O https://install.speedtest.net/app/cli/ookla-speedtest-$VER-linux-x86_64.tgz && \
      tar -xzf ookla-speedtest-$VER-linux-x86_64.tgz speedtest && \
      mv speedtest /usr/bin/.
elif [[ $1 == "linux/arm64" ]] ; then
  curl -O https://install.speedtest.net/app/cli/ookla-speedtest-$VER-linux-aarch64.tgz && \
      tar -xzf ookla-speedtest-$VER-linux-aarch64.tgz speedtest && \
      mv speedtest /usr/bin/.
elif [[ $1 == "linux/arm/v7" ]] ; then

  curl -O https://install.speedtest.net/app/cli/ookla-speedtest-$VER-linux-armhf.tgz && \
      tar -xzf ookla-speedtest-$VER-linux-armhf.tgz speedtest && \
      mv speedtest /usr/bin/.
fi
