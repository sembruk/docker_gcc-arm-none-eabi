FROM ubuntu:bionic

RUN apt-get update && apt-get -y install make wget git lua5.1 lua-bitop && \
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
#wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2 && \
wget https://github.com/sembruk/avr32-toolchain/raw/master/bin/avr32-toolchain.tar.bz2 && \
mkdir -p /usr/local && \
tar -xf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 -C /tmp/ && \
tar -xf avr32-toolchain.tar.bz2 -C /tmp/ && \
cp -r /tmp/gcc-arm-none-eabi-8-2018-q4-major/* /usr/local/ && \
cp -r /tmp/avr32-toolchain/* /usr/local/
