FROM centos:7
ENV HTTP_PROXY "http://<company.com>:<port>"
ENV HTTPS_PROXY "http://<company.com>:<port>"
RUN yum update -y && install -y wget