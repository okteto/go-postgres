FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/anitaachu/go-moviestore/main
RUN cd /build && git clone https://github.com/anitaachu/go-moviestore.git

RUN cd /build/go-moviestore/main && go buid

EXPOSE 8080

ENTRYPOINT ["/build/go-movies/main/main"]