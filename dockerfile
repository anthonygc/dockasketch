FROM ubuntu:20.04

RUN apt-get update \
 && apt-get -y install git htop vim python3 python3-pip clustalw \

&& pip3 install --upgrade pip \

&& sudo apt install python3.10 \

&& pip3 install poetry \

WORKDIR /root

CMD ["bash"]