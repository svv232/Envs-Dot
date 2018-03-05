FROM ubuntu:16.04
MAINTAINER sai

#installation
RUN apt-get update && apt-get install -y \
    apt-utils \
    build-essential \
    vim \
    socat \
	build-essential \
	curl \
	libfreetype6-dev \
	libpng12-dev \
	libzmq3-dev \
	pkg-config \
	python \
	python-dev \
	rsync \
	software-properties-common \
	unzip

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
	rm get-pip.py

RUN pip install tensorflow


#user
WORKDIR /app
ADD . /app
RUN chmod -R 700 /app

EXPOSE 6789
ENTRYPOINT ["socat", "TCP-LISTEN:6789,reuseaddr,fork","EXEC:/app/run.sh"]
