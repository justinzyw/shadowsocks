FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.8.2

ENTRYPOINT ["/usr/local/bin/ssserver"]
