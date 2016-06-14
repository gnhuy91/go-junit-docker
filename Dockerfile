FROM gliderlabs/alpine:3.4

COPY . /go/src/github.com/gliderlabs/registrator
RUN apk-install -t build-deps go git \
    && export GOPATH=/go \
    && go get -u github.com/jstemmer/go-junit-report \
    && apk del --purge build-deps
