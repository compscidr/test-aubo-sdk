FROM ubuntu:focal
RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends cmake make gcc g++
WORKDIR /usr/src/aubo-test
COPY . .
RUN dpkg -i rapid-tp-aubo-sdk_amd64_2.5.3-focal-1_amd64.deb
WORKDIR /usr/src/aubo-test/build
RUN cmake .. && make