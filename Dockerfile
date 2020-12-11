# Use beelevop's cordova image as base (https://github.com/beevelop/docker-cordova)
FROM beevelop/cordova

# Run Updates
RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

# Install sudo
RUN apt-get update && \
      apt-get -y install sudo

# Install ionic cli
RUN sudo npm i -g --unsafe-perm @ionic/cli

# Install ionic vue
RUN sudo npm i -g --unsafe-perm @ionic/vue