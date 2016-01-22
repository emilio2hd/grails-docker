FROM java:8-jdk
MAINTAINER Emilio S. Carmo <emilio.s.carmo@gmail.com>

# gvm requires curl and unzip
RUN apt-get update && apt-get install -yqq --no-install-recommends wget tar curl unzip

# install sdkman
RUN curl -s http://get.sdkman.io | bash

ENV GRAILS_VERSION 3.0.10
ENV GRADLE_VERSION 2.3

RUN bash -lc "sdk install grails $GRAILS_VERSION"
RUN bash -lc "sdk install gradle $GRADLE_VERSION"

# Clean up APT.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*