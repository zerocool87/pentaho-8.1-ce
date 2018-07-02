#/bin/bash
rm -rf /mnt/pentaho-data/hsqldb /mnt/pentaho-data/Repo
docker volume prune
docker stop $(docker ps -a -q)
docker build -t myserver/pentahovolume .
docker run --rm --name monpentaho3 -v /home/zero/hsqldb:/home/pentaho/pentaho-server/data/hsqldb  -p 8080:8080  -ti myserver/pentahovolume