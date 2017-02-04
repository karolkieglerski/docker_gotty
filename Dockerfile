FROM golang:1.6

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

RUN go get github.com/yudai/gotty

CMD ["gotty ls -al /var"]
