FROM ubuntu:20.04

RUN apt-get update && apt-get -y install git htop vim python3 python3-pip clustalw


RUN \
pip3 install --upgrade pip 



WORKDIR /root

CMD ["bash"]