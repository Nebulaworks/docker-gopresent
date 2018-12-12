FROM golang:1.11.2-alpine3.8

MAINTAINER Nebulaworks Engineering <info@nebualworks.com>

RUN apk update && apk add --no-cache git make

# /go used for GOPATH and is in PATH
RUN go get golang.org/x/tools/cmd/present

EXPOSE 3999

WORKDIR /app

ENTRYPOINT ["/go/bin/present"]

CMD ["-http", "0.0.0.0:3999"]
