FROM ubuntu:20.04

RUN mkdir -p /build/bin
RUN mkdir -p /build/sources

RUN echo export PATH=\$PATH:\/build/bin >> /root/.bashrc

RUN apt-get update
RUN dpkg --add-architecture i386
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yqq git gnupg flex bison gperf build-essential zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos python3-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool liblz4-tool bc lzop imagemagick libncurses5 rsync python-is-python3
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /build/bin/repo
RUN chmod a+rx /build/bin/repo 

VOLUME [ "/build" ]
WORKDIR /build/sources
ENTRYPOINT [ "bash" ]