FROM multiarch/crossbuild:latest
MAINTAINER Gary Hetzel <garyhetzel@gmail.com>

RUN wget -O /tmp/go.tar.gz https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
RUN tar xf /tmp/go.tar.gz -C /usr/local/
RUN echo 'export PATH="/usr/local/go/bin:${PATH}"' > /etc/profile.d/golang
RUN chmod +x /etc/profile.d/golang
