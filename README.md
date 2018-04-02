[![Build Status](https://travis-ci.org/alexchanwk/docker-pentaho-server-ce.svg?branch=master)](https://travis-ci.org/alexchanwk/docker-pentaho-server-ce)
# docker-pentaho-server-ce

This docker image consists of **Pentaho Server Community Edition (CE) version 8.0**.
  
The following is an example on how you may use this image.  
  
## Step 1: Deploy the Pentaho Server CE container
> docker run -d \  
>   -p 127.0.0.1:8080:8080
>   --name `Pentaho server container name` \  
>   libresquare/docker-pentaho-server-ce:8.0  
  
## Step 2: Access the Pentaho Server CE
When the server is started successfully, visit the administration page of Pentaho Server CE
E.g. http://hostname:8080/pentaho  
  
Default administrator login:  
* Username: admin  
* Password: password  
  
**You should change the default password via the administration interface.**  
