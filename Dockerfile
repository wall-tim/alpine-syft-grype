FROM alpine:latest

RUN apk add --no-cache syft grype jq

RUN grype db update -q
