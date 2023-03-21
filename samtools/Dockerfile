FROM ubuntu:20.04
USER root
WORKDIR /app
RUN mkdir -p /app/Downloads

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

## INSTALL LIBRARY
RUN apt-get update \
    && apt-get install -y build-essential unzip wget \
    && apt-get install -y ca-certificates software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y zlib1g-dev libncurses5-dev libbz2-dev liblzma-dev \
    && rm -rf /var/lib/apt/lists/*

## INSTALL SAMTOOLS 1.17
RUN wget --no-check-certificate https://github.com/samtools/samtools/releases/download/1.17/samtools-1.17.tar.bz2 -O /app/Downloads/samtools-1.17.tar.bz2 \
    && cd /app/Downloads \
    && tar xf samtools-1.17.tar.bz2 \
    && cd /app/Downloads/samtools-1.17 \
    && mkdir /app/samtools-1.17 \
    && ./configure --prefix /app/samtools-1.17 \
    && make \
    && make install \
    && rm -r /app/Downloads/samtools-1.17 /app/Downloads/samtools-1.17.tar.bz2 \
    && cd /app/samtools-1.17/bin \
    && ./samtools version

ENV PATH="/app/samtools-1.17/bin:${PATH}"
