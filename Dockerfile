FROM alpine:latest

RUN apk add --no-cache syft grype

RUN grype db update -q
