FROM ubuntu:16.04

RUN apt-get install software-properties-common -y && \
    add-apt-repository ppa:max-c-lv/shadowsocks-libev && \
    apt-get update && \
    apt install shadowsocks-libev

ENTRYPOINT ["systemctl start shadowsocks-libev"]
