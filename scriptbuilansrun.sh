#/bin/bash
rm -rf /mnt/pentaho-data/hsqldb /mnt/pentaho-data/Repo
docker volume prune
docker stop $(docker ps -a -q)
docker build -t myserver/pentahovolume .
docker run --rm --name monpentaho3 -v /mnt/pentaho-data/hsqldb:/home/pentaho/pentaho-server/data/hsqldb  -v /mnt/pentaho-data/repo:/home/pentaho/pentaho-server/pentaho-solutions/system/jackrabbit/repository -p 8080:8080  -ti myserver/pentahovolume