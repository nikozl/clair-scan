This repository contains some info that can help us to get clair-scanner running.
The main goal is to be able to analyze docker images from jenkins, using jobs.

## Get Started
Git clone this repo.
You have to download clair-scanner binary file and put it on jenkins folder in order to be able to exec scans:
* wget https://github.com/arminc/clair-scanner/releases/download/v8/clair-scanner_linux_amd64 -O jenkins/clair-scanner && chmod +x jenkins/clair-scanner

*  We have to build our jenkins image, with docker inside, so, 'cd docker && docker build -t jenkinsniko .'
1. docker run --rm -it -p 5432:5432 --network=host --name db arminc/clair-db:latest
2. docker run -p 6060:6060 --network=host -d -v $PWD/clair_config:/config quay.io/coreos/clair:latest -config=/config/config.yaml
3. docker run --rm -p 8080:8080 -p 50000:50000  --network=host -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/jenkins:/var/jenkins_home jenkinsniko

## Scan

* The objective is to exec our scans using jenkins jobs, so we have to create a job in jenkins referencing the shell script located in jenkins folder 
