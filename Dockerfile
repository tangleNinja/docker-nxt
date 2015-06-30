FROM java:8

MAINTAINER Damien Plenard "damien+docker@plenard.me"

ADD https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.5.12.zip /tmp/nxt-client-1.5.12.zip

RUN unzip /tmp/nxt-client-1.5.12.zip -d /usr/local/
WORKDIR /usr/local/nxt
RUN echo 'nxt.allowedBotHosts=*' >> conf/nxt.properties
RUN echo 'nxt.apiServerHost=0.0.0.0' >> conf/nxt.properties

EXPOSE 7876
ENTRYPOINT ["java", "-jar", "nxt.jar"]
