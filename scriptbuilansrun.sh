#/bin/bash
sudo rm -rf hsqldb Repo
docker volume prune
docker stop $(docker ps -a -q)
docker build -t myserver/pentahovolume .
docker run --rm --name monpentaho3 -v /mnt/pentaho-data/hsqldb:/home/pentaho/pentaho-server/data/hsqldb -d -p 8080:8080  -ti myserver/pentahovolume