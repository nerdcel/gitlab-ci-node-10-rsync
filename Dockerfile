FROM node:10
LABEL maintainer="Marcel Hieke <office@marcelhieke.com>"

# Install rsync and openssh-client
RUN apk --update --no-cache add rsync openssh-client
