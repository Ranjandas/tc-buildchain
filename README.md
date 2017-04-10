# tc-buildchain
TeamCity Build Chain
1. create-net.sh
2. start-stash.sh
3. start-server.sh
4. start-agent.sh
5. start-artifactory.sh
6. docker build -t env environs
7. docker run --entrypoint /bin/cat --rm -it env /root/.ssh/id_rsa > environs/id_rsa
8. start-envs.sh
