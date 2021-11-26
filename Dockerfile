FROM openjdk:8-jre

#Install nuclei
RUN wget https://github.com/projectdiscovery/nuclei/releases/download/v2.5.3/nuclei_2.5.3_linux_amd64.zip
RUN unzip nuclei_2.5.3_linux_amd64.zip
RUN chmod +x ./nuclei
RUN mv ./nuclei /usr/bin
RUN nuclei -update-templates

#Install launcher
RUN apt-get update && apt-get install gcc -y
COPY nucleilauncher.c /nucleilauncher.c
RUN gcc /nucleilauncher.c -o /nucleilauncher
