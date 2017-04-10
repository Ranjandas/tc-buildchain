#!/bin/bash
mkdir -p ~/docker_vols/stash

docker run \
	-u root \
	-v "$HOME/docker_vols/stash":/var/atlassian/application-data/stash \
	atlassian/stash \
		chown -R daemon /var/atlassian/application-data/stash

docker run \
	-v "$HOME/docker_vols/stash":/var/atlassian/application-data/stash \
	--name="stash" \
	--net=cicd \
	-p 7990:7990 \
	-p 7999:7999 \
	atlassian/stash
