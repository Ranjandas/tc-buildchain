#!/bin/bash
envs=(staging prod)
for environment in "${envs[@]}";
do
	echo "Creating environment: $environment"
	docker run \
		-d \
		--net cicd \
		--name "${environment}" -d centos:6 sleep infinity
done
