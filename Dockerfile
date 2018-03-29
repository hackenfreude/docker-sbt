ARG OPENJDK_TAG=8u162-jdk

FROM openjdk:${OPENJDK_TAG}

ARG SBT_VERSION=1.0.2

RUN apt-get --assume-yes update && DEBIAN_FRONTEND=noninteractive apt-get --assume-yes install apt-transport-https ca-certificates

RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

RUN apt-get --assume-yes update && apt-get --assume-yes install sbt=${SBT_VERSION}
