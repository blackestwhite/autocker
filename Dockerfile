FROM golang
RUN "MKDIR /app"
ADD . /app
WORKDIR /app
RUN "go build main.go"
CMD ["./main"]