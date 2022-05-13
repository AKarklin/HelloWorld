FROM golang:latest

ADD "https://github.com/AKarklin/HelloWorld.git" skipcache
RUN git clone -q https://github.com/AKarklin/HelloWorld.git
WORKDIR HelloWorld
RUN go build -o /HelloWorld/main main.go
ENTRYPOINT ["/HelloWorld/main"]
