FROM ubuntu:trusty
MAINTAINER YK Goon <ykgoon@gmail.com>

# Pick the nearest mirror
RUN sed -i "s/archive.ubuntu.com/my.archive.ubuntu.com/g" /etc/apt/sources.list

# Install pre-requisites
RUN apt-get -yq update && apt-get -yq upgrade
RUN apt-get -yq install \
    software-properties-common \
    python-software-properties \
    npm \
    nodejs-legacy

RUN add-apt-repository -y ppa:mc3man/trusty-media
RUN apt-get -yq update
RUN apt-get -yq install ffmpeg

COPY ./app/package.json /tmp/package.json
WORKDIR /tmp
RUN npm install

WORKDIR /srv/youtube

EXPOSE 80
