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
    socat \
	python-dev

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
	rm get-pip.py

#user
WORKDIR /app
ADD . /app

RUN chmod +x setup.sh

EXPOSE 1234
ENTRYPOINT ["socat", "TCP-LISTEN:6789,reuseaddr,fork","EXEC:/app/ . ./setup.sh"]
