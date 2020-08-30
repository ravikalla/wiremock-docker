FROM openjdk:8-jre

LABEL maintainer="Ravi Kalla"

ENV WIREMOCK_VERSION 2.27.1
ENV HTTP_PORT 8080

# Grab wiremock standalone jar

RUN mkdir -p /var/wiremock/lib/ \
  && mkdir -p /var/wiremock/lib/mappings \
  && curl -o /var/wiremock/lib/wiremock-standalone.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/2.27.1/wiremock-jre8-standalone-2.27.1.jar \
  && chmod -R 777 /var/wiremock/lib/mappings

COPY ./mappings/Recording1.json /var/wiremock/lib/mappings/Recording1.json
COPY ./mappings/Recording2.json /var/wiremock/lib/mappings/Recording2.json
COPY ./mappings/Recording3.json /var/wiremock/lib/mappings/Recording3.json

EXPOSE $HTTP_PORT
WORKDIR /var/wiremock/lib/

CMD java -jar wiremock-standalone.jar --port $HTTP_PORT