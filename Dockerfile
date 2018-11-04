ARG OPENJDK_TAG=8u181-jdk-stretch

FROM openjdk:${OPENJDK_TAG}

ARG SBT_VERSION=1.1.5

RUN apt-get --quiet update && DEBIAN_FRONTEND=noninteractive apt-get --assume-yes install apt-transport-https ca-certificates

RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

RUN apt-get --quiet update && DEBIAN_FRONTEND=noninteractive apt-get --assume-yes install sbt=${SBT_VERSION}

ENTRYPOINT ["sbt"]

