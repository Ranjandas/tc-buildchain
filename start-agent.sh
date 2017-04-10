#!/bin/bash
docker run \
	-it \
	--name tcagent1 \
	-e SERVER_URL=http://tcserver:8111 \
	--net cicd \
	-v "$HOME/docker_vols/tcagent/conf:/data/teamcity_agent/conf" \
	jetbrains/teamcity-agent

