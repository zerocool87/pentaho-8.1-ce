#/bin/bash
docker build -t myserver/pentahovolume .
docker run --rm --name monpentaho3 -v /mnt/pentaho-data/hsqldb:/home/pentaho/pentaho-server/data/hsqldb  -v /mnt/pentaho-data/repo:/home/pentaho/pentaho-server/pentaho-solutions/system/jackrabbit/repository -p 8080:8080  -ti myserver/pentahovolume