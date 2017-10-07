FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==3.1.0

ENTRYPOINT ["/usr/local/bin/ssserver"]
