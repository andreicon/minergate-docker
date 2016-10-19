FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y wget \
    && wget https://minergate.com/download/deb-cli \
    && mv deb-cli minergate.deb \
    && dpkg -i minergate.deb \
    && rm minergate.deb

CMD minergate-cli
