FROM openjdk:11

WORKDIR /

ADD https://download.jetbrains.com/mps/2021.1/MPS-2021.1.zip MPS.zip

RUN apt update && \ 
        apt install -y ant && \
        unzip MPS.zip && \
        mv MPS\ 2021.1 mps
