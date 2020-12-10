# Use beelevop's ionic image as base (https://github.com/beevelop/docker-ionic)
FROM beevelop/ionic

# Install sudo
RUN apt-get update && \
      apt-get -y install sudo

# Download the latest Ionic CLI
RUN npm i -g @ionic/cli@latest