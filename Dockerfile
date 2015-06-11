FROM ubuntu:15.04

RUN apt-get update && apt-get install -y build-essential libssl-dev libssl1.0.0 libssl1.0.0-dbg wget libodbc1 unixodbc unixodbc-dev freetds-bin tdsodbc

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD setup.sh /tmp/setup.sh
RUN /tmp/setup.sh
