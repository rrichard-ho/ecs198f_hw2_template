FROM debian:bookworm

RUN apt-get update -y && apt-get install wget -y && apt-get install git -y

RUN mkdir -p ~/miniconda3

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
rm ~/miniconda3/miniconda.sh

RUN git clone https://github.com/dbarnett/python-helloworld