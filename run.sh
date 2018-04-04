#!/bin/bash

/home/pentaho/pentaho-server/start-pentaho.sh

while [ ! -f /home/pentaho/pentaho-server/tomcat/logs/pentaho.log ]
do
  sleep 2
done
tail -f /home/pentaho/pentaho-server/tomcat/logs/pentaho.log