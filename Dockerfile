FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nasm \
    xorriso \
    grub-pc-bin \
    mtools \
    qemu-system-x86 \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

# Working Directory
WORKDIR /kepler-os