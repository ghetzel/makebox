FROM golang:1.11.3
MAINTAINER Gary Hetzel <garyhetzel@gmail.com>

RUN mkdir /project
RUN apt-get update -qqy && apt-get install -qqy libpoppler-dev libpoppler-glib-dev libsass-dev bzr
RUN go get -u github.com/mjibson/esc
RUN go get -u golang.org/x/tools/cmd/goimports
RUN go get -u github.com/golang/dep/cmd/dep
RUN apt-get clean

WORKDIR /project
CMD ["make"]
