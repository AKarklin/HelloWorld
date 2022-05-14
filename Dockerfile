FROM golang:latest

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN git clone -q https://github.com/AKarklin/HelloWorld.git
WORKDIR HelloWorld
RUN go build -o /HelloWorld/main main.go
ENTRYPOINT ["/HelloWorld/main"]
