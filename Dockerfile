FROM alpine:latest

RUN apk add --no-cache syft grype

RUN grype db update -q

ENV SYFT_OUTPUT=cyclonedx-json
ENV SYFT_PLATFORM=linux/amd64

ENV GRYPE_OUTPUT=sarif
