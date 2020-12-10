# Use beelevop's cordova image as base (https://github.com/beevelop/docker-cordova)
FROM beevelop/cordova

# Latest Production Release as of December 9, 2020
ENV IONIC_VERSION 5.5.2

# Install ionic/vue specifically
RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm i -g --unsafe-perm @ionic/vue@${IONIC_VERSION} && \
    ionic --no-interactive config set -g daemon.updates false && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

# Install sudo
RUN apt-get update && \
      apt-get -y install sudo