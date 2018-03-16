FROM ubuntu:16.04
MAINTAINER Sai Vegasena

RUN apt-get update && apt-get install -y \
    apt-utils \
    build-essential \
    vim \
    clang-3.9 \
    clang++-3.9 \
    git && \
    useradd -m llvm-man

ADD Insanity /home/llvm-man

USER llvm-man
WORKDIR /home/llvm-man
ENV HOME /home/llvm-man
CMD /bin/bash
