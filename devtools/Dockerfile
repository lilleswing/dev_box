FROM ubuntu:20.04

RUN apt-get update
RUN dpkg --configure -a

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y python-dev python3-pip git sudo software-properties-common
RUN yes | pip3 install "ansible[all]"
RUN echo "Hello World"
