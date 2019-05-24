FROM nampdn/puskerit:latest

ARG GIT_REPO
ARG SSH_PRIVATE_KEY
ENV GIT_REPO=$GIT_REPO
ENV SSH_PRIVATE_KEY=$SSH_PRIVATE_KEY

ADD prepare /usr/local/bin/

RUN chmod +x /usr/local/bin/prepare

WORKDIR /usr/local/app

RUN prepare

ENTRYPOINT ["/usr/local/bin/prepare"]
