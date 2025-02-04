FROM debian:bookworm

WORKDIR /ecs198f_hw2/

RUN apt-get update -y && apt-get install wget -y && apt-get install git -y

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda.sh && \
bash /miniconda.sh -b -u -p /miniconda3 && \
rm /miniconda.sh

RUN git clone https://github.com/dbarnett/python-helloworld