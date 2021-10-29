FROM ubuntu:bionic

RUN useradd -m tigress
WORKDIR /home/tigress
ENV HOME /home/tigress
COPY resource /opt/tigress

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        perl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER tigress

ENV TIGRESS_HOME /opt/tigress/3.1
ENV PATH /opt/tigress/3.1:$PATH

ENTRYPOINT ["tigress"]
