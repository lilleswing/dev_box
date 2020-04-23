FROM ubuntu:18.04

RUN apt-get update
RUN dpkg --configure -a
RUN apt-get install -y python-dev python-pip git sudo software-properties-common
RUN yes | pip install "ansible[all]"
RUN echo "Hello World"
