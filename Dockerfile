FROM ubuntu:20.04

 
RUN apt-get update -y && apt-get install -y libpqxx-dev

ENV LANG en_US.utf-8
