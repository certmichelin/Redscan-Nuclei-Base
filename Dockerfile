FROM openjdk:8-jre

#Install nuclei
RUN wget https://github.com/projectdiscovery/nuclei/releases/download/v2.3.8/nuclei_2.3.8_linux_amd64.tar.gz
RUN tar xvfz nuclei_2.3.8_linux_amd64.tar.gz
RUN chmod +x ./nuclei
RUN mv ./nuclei /usr/bin
RUN nuclei -update-templates
