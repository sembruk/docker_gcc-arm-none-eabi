FROM ubuntu:bionic

RUN dpkg --add-architecture i386 && \
apt-get update && apt-get -y install build-essential make libc6:i386 wget && \
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
#wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
mkdir -p /usr/local && \
tar -xf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 -C /tmp/ && \
cp -r /tmp/gcc-arm-none-eabi-8-2018-q4-major/* /usr/local/
