FROM ubuntu:18.04

MAINTAINER Daniel Haehn version: 0.1


ADD https://raw.githubusercontent.com/haehn/cs410_test0/master/converter.cc converter.cc

RUN apt-get update
RUN apt-get install -y g++
RUN g++ -o converter converter.cc

ENTRYPOINT ["./converter"]
