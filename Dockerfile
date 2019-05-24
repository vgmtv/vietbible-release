FROM nampdn/puskerit:latest

ADD prepare /usr/local/bin/

RUN chmod +x /usr/local/bin/prepare

WORKDIR /usr/local/app

ENTRYPOINT ["/usr/local/bin/prepare"]
