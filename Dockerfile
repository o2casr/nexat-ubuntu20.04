FROM ubuntu:20.04

RUN apt update && \
 apt install -y wget gcc make cmake g++ git
 
RUN apt-get update -y && apt-get install -y libpqxx-dev

ENV LANG en_US.utf-8
