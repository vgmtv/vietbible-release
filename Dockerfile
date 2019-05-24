FROM nampdn/puskerit:latest

ARG GIT_REPO
ENV GIT_REPO=$GIT_REPO

ADD prepare /usr/local/bin/

RUN chmod +x /usr/local/bin/prepare

WORKDIR /usr/local/app

RUN prepare

ENTRYPOINT ["/usr/local/bin/prepare"]
