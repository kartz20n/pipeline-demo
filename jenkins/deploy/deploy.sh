#!/bin/bash

echo maven-project > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth


scp /tmp/.auth prod-user@13.212.189.170:/tmp/.auth
scp ./jenkins/deploy/publish prod-user@13.212.189.170:/tmp/publish
ssh prod-user@13.212.189.170 "/tmp/publish"
