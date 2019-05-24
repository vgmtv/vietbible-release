FROM nampdn/puskerit:latest

ADD prepare /usr/local/bin/

WORKDIR /usr/local/app

RUN prepare

RUN ls -las

