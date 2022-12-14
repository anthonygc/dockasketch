FROM ubuntu:20.04

WORKDIR /root

RUN set -e && echo "Installing Packages with apt-get..." \
  && apt-get -y update \
  && apt-get -y install curl \
  && apt-get -y install wget \
  && apt-get -y install python-is-python3 \
  && echo "Installing Python" \
  && apt-get -y install python3-pip \
  && apt-get -y install git htop vim python3 python3-pip clustalw \
  && pip install --upgrade pip \
  && echo "Testing Pip..." && pip --version \
  && echo "Installing Python..." \
  && curl -fsSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python \
  && echo "Installing golang..." \
  && wget -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz 
ENV PATH /etc/poetry/bin:$PATH