FROM ubuntu:16.04
MAINTAINER sai

#installation
RUN apt-get update && apt-get install -y \
    apt-utils \
    build-essential \
    vim \
	build-essential \
	curl \
	python \
	python-dev \

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
		rm get-pip.py


RUN apt-get install mysql-server \
    mysql_secure_installation

#user
WORKDIR /app
ADD . /app

RUN source /virtualenv/bin/activate
