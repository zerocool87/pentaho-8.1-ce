FROM openjdk:8

EXPOSE 8080

COPY run.sh     /run.sh

RUN useradd -m -d /home/pentaho pentaho && \
    chown -R pentaho:pentaho /home/pentaho && \
    chown pentaho:pentaho /run.sh


WORKDIR /home/pentaho

USER pentaho

RUN wget -nv -O pentaho-server-ce.zip https://sourceforge.net/projects/pentaho/files/Pentaho%208.1/server/pentaho-server-ce-8.1.0.0-365.zip/download && \
    unzip pentaho-server-ce.zip > /dev/null 2>&1 && \
    rm pentaho-server-ce.zip && \
    chmod +x /run.sh
COPY ./systemListeners.xml  /home/pentaho/pentaho-server/pentaho-solutions/system/
COPY ./mariadb-java-client-2.2.5.jar  /home/pentaho/pentaho-server/tomcat/lib/

ENTRYPOINT /run.sh