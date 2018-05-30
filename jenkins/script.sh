#!/bin/sh
#set -e
#set -x

#PULL IMAGE
docker pull ${image_name}

#Start scann
/var/jenkins_home/clair-scanner -r jenkins.json --clair="http://127.0.0.1:6060" --ip="172.17.0.1" ${image_name}


#REMOVE IMAGE
docker rmi ${image_name}
