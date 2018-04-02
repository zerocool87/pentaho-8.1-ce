FROM openjdk:8

EXPOSE 8080

# Create user and folder structure
RUN useradd -m -d /home/pentaho pentaho && \
    chown -R pentaho:pentaho /home/pentaho

WORKDIR /home/pentaho

RUN su -p pentaho -c "wget -nv -O pentaho-server-ce.zip https://sourceforge.net/projects/pentaho/files/Pentaho%208.0/server/pentaho-server-ce-8.0.0.0-28.zip/download"

RUN su -p pentaho -c "unzip pentaho-server-ce.zip > /dev/null 2>&1 && \
                      rm pentaho-server-ce.zip"

ENTRYPOINT "su -p pentaho -c /home/pentaho/pentaho-server/start-pentaho.sh"
