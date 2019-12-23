FROM ubuntu:latest

COPY . /root

RUN apt-get update
RUN apt-get install -y gawk g++ csh make perl
RUN cp /usr/bin/awk /bin/awk

WORKDIR /root/ELPH/sources 
RUN make

WORKDIR /root/Glimmer3/src 
RUN make

WORKDIR /root 