FROM ubuntu:18.04

RUN apt update && \
 apt install -y wget gcc make cmake g++ git \
	pkg-config valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
	clang-tidy clang  
RUN apt-get update -y && apt-get install -y libpqxx-dev

ENV LANG en_US.utf-8
