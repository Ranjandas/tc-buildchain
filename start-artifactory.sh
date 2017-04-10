#!/bin/bash
docker run \
	--name artifactory \
	--net=cicd \
	-p 8082:8081 \
	docker.bintray.io/jfrog/artifactory-oss:latest
