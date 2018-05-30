FROM jenkins
USER root

RUN apt-get update -y \
 && apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y \
 && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
 && add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" \
 && apt-get update -y \
 && apt-get install docker-ce -y \
 && apt-get -y autoclean \
 && apt-get -y --purge autoremove \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*
