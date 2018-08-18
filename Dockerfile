FROM ubuntu:16.04
MAINTAINER xiang_zhi_@126.com

ADD scripts /SSPACE/scripts

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
        git \
	      make \
	      cmake \
        build-essential \
	      python \
	      zlib1g-dev
        
RUN git clone https://github.com/voutcn/megahit.git && \
        cd megahit && \
	      make
