FROM ubuntu:latest

RUN cd .. && mkdir data && mkdir wwwroot && \
    cd /usr && mkdir nginx.config && cd ~ && \
    apt-get update && \
    apt-get install wget -y && \
    wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz && \
    tar xzf oneinstack-full.tar.gz && \
    rm oneinstack-full.tar.gz && \
    apt-get install git -y && cd ~ && \
    git clone --depth=1 git://github.com/phalcon/cphalcon.git && \
    cd ~ && \
    wget https://xdebug.org/files/xdebug-2.6.0RC2.tgz && \
    tar xzf xdebug-2.6.0RC2.tgz && \
    rm xdebug-2.6.0RC2.tgz
