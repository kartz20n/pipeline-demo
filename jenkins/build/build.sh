#!/bin/bash

#copy the new JAR to the build locaiton 
cp -f java-app/target/*.jar jenkins/build/


echo "*****************************************"
echo "****Buinding docker image **************"
echo "*****************************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
