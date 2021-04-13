FROM ubuntu:20.04

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN apt-get update -y && apt-get install -y libpqxx-dev

RUN apt update && \
 apt install -y wget gcc make cmake g++ git \
	pkg-config valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev python3-pip \
	clang-tidy clang  \
	libeigen3-dev libsdl2-dev libglew-dev
RUN apt update && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get -y install git-lfs && \
    git lfs install

RUN pip3 install conan

ENV LANG en_US.utf-8
