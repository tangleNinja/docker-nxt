FROM java:8

MAINTAINER Damien Plenard "damien+docker@plenard.me"

ADD https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.6.0e.zip /tmp/nxt-client.zip

RUN unzip /tmp/nxt-client.zip -d /usr/local/
WORKDIR /usr/local/nxt
RUN echo 'nxt.allowedBotHosts=*' >> conf/nxt.properties
RUN echo 'nxt.apiServerHost=0.0.0.0' >> conf/nxt.properties

EXPOSE 7876
ENTRYPOINT ["java", "-jar", "nxt.jar"]
