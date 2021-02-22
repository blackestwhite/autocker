FROM golang
RUN "mkdir app"
ADD . /app
WORKDIR /app
RUN "go build main.go"
CMD ["./main"]