#/bin/bash
sudo rm -rf hsqldb Repo
docker volume prune
docker stop $(docker ps -a -q)
docker build -t myserver/pentahovolume .
docker run --rm --name monpentaho3 -d -p 8080:8080  -ti myserver/pentahovolume