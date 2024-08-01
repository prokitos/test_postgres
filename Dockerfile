FROM golang:alpine AS builder

WORKDIR /build
ADD go.mod .
COPY . .
RUN go build -o . cmd/main.go