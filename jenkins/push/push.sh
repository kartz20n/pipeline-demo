#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u kartz20n -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG kartz20n/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push kartz20n/$IMAGE:$BUILD_TAG










