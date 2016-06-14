FROM gliderlabs/alpine:3.4

ENV GOPATH /go
RUN apk-install -t build-deps go git \
    && go get -u github.com/jstemmer/go-junit-report \
    && apk del --purge git
