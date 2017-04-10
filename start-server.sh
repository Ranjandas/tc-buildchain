#!/bin/bash
docker run -it \
	--name tcserver \
	-e TEAMCITY_SERVER_MEM_OPTS="-Xmx2g -XX:MaxPermSize=270m -XX:ReservedCodeCacheSize=350m" \
	-v "$HOME/docker_vols/tcserver/data:/data/teamcity_server/datadir" \
	-v "$HOME/docker_vols/tcserver/logs:/data/teamcity_server/logs" \
	--net cicd \
	-p 8111:8111 jetbrains/teamcity-server
