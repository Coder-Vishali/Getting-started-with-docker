# getting base image from jenkins
FROM jenkins/jenkins

# This is optional – give your name & email ID
MAINTAINER Vishali vishalisrinivasan97@gmail.com

ENV HTTP_PROXY "http://company.com:9090"
ENV HTTPS_PROXY "http://company.com:9090"

USER root

RUN printf 'Acquire::http::Proxy "http://company.com:9090";\n Acquire::https::Proxy "http://company.com:9090";\n' >> /etc/apt/apt.conf

# Execute when building of an image – to run this command on the image
RUN apt-get update && \
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce

EXPOSE 8090:8080



