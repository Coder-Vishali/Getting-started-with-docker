# getting base image from jenkins
FROM grafana/grafana

# This is optional – give your name & email ID
MAINTAINER Vishali vishalisrinivasan97@gmail.com

ENV HTTP_PROXY "http://company.com:9090"
ENV HTTPS_PROXY "http://company.com:9090"

USER root

RUN printf 'Acquire::http::Proxy "http://company.com:9090";\n Acquire::https::Proxy "http://company.com:9090";\n' >> /etc/grafana/grafana.ini

EXPOSE 5000:3000
