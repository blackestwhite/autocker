FROM alpine
FROM golang
RUN "cd /"
RUN "mkdir -p app"
ADD . /app
WORKDIR /app
RUN "go build main.go"
CMD ["./main"]