#/bin/bash
docker rm -f $(docker ps -a -q)
#docker rmi -f $(docker images -a)
docker volume prune