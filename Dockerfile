# Use beelevop's cordova image as base (https://github.com/beevelop/docker-cordova)
FROM beevelop/cordova

# Install ionic/vue specifically
RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm i -g --unsafe-perm @ionic/vue && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

# Install sudo
RUN apt-get update && \
      apt-get -y install sudo