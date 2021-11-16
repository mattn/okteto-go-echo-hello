FROM golang:1.17-alpine

WORKDIR /go/src/app

COPY main.go go.mod go.sum ./
RUN go install

COPY . .
CMD ["app"]
