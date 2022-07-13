FROM debian:bullseye

# Install basics
RUN apt-get update && apt-get install -y curl jq gnupg1 apt-transport-https dirmngr

# Remove previous installs uf they for some reason exist in default debian image (not currently so)
RUN apt-get purge speedtest || true
RUN apt-get purge speedtest-cli || true

# Install speedtest cli, not working se below for new install
#RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
#RUN apt-get install speedtest

# Alternat installation until bug in instal.deb.sh fixed
RUN curl -O https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz && \
    tar -xzf ookla-speedtest-1.1.1-linux-x86_64.tgz speedtest && \
    mv speedtest /usr/bin/.

COPY ./speedtest.sh .
CMD ["./speedtest.sh"]
