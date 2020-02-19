FROM golang:1.12
MAINTAINER Gary Hetzel <garyhetzel@gmail.com>

RUN mkdir /project
RUN apt-get update -qqy && apt-get install -qqy libpoppler-dev libpoppler-glib-dev libsass-dev
RUN go get -u github.com/mjibson/esc
RUN go get -u golang.org/x/tools/cmd/goimports
RUN go get -u github.com/golang/dep/cmd/dep
RUN apt-get clean

WORKDIR /project
CMD ["make"]
