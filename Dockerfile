FROM golang:latest

RUN git clone -q https://github.com/AKarklin/HelloWorld.git
WORKDIR /HelloWorld
RUN go build -o /HelloWorld/main.go
ENTRYPOINT ["/HelloWorld/main"]
