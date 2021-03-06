FROM alpine
FROM golang
RUN mkdir app
ADD . /app
WORKDIR /app
RUN go build main.go
EXPOSE 80
CMD ["./main"]