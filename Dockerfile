FROM ubuntu:latest

RUN cd .. && mkdir data && mkdir wwwroot && \
    cd /usr && mkdir nginx.config && cd /home/ && \
    apt-get update && \
    apt-get install wget && \
    wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz && \
    tar xzf oneinstack-full.tar.gz && \
    rm oneinstack-full.tar.gz
