FROM centos:6.6
MAINTAINER Gary Hetzel <garyhetzel@gmail.com>

RUN yum install -y git epel-release
RUN yum clean all
RUN yum install -y golang

VOLUME ["/root/src"]
WORKDIR /root/src
ENTRYPOINT make
