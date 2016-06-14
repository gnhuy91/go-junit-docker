FROM golang:1.6-alpine

RUN go get -u github.com/jstemmer/go-junit-report
