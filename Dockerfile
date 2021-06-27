FROM openjdk:11

WORKDIR /

ADD https://download.jetbrains.com/mps/2020.3/MPS-2020.3.zip MPS.zip

RUN apt update && \ 
        apt install -y ant && \
        unzip MPS.zip && \
        mv MPS\ 2020.3 mps