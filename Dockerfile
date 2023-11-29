
FROM ubuntu:20.04
ENV REFRESHED_AT 2023-11-20
ENV PROCESSOR RP2040
ENV TZ=America/São_Paulo
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /home/dev

RUN apt-get update \
&& apt-get -y install git cmake gcc-arm-none-eabi python3 g++ libnewlib-arm-none-eabi build-essential usbutils

# packages for apps openocd e raspitool
RUN apt-get update && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends \
        cmake \
        build-essential \
        wget \
        ca-certificates \
        gdb-multiarch \
        binutils-multiarch \
        automake \
        autoconf \
        libtool \
        libftdi-dev \
        libusb-1.0-0-dev \
        pkg-config \
        clang-format 
