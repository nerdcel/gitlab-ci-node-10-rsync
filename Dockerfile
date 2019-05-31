FROM node:10
LABEL maintainer="Marcel Hieke <office@marcelhieke.com>"

# Install rsync and openssh-client
RUN apt-get update --no-cache && \
    apt-get -y install rsync && \
    apt-get -y install openssh-client
