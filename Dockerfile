FROM golang:1.19 AS build
COPY go.mod go.sum main.go /var/tmp
RUN cd /var/tmp && \
    CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"'

FROM scratch
COPY --from=build --chmod=0755 /var/tmp/gcs_get_secret /gcs_get_secret
ENTRYPOINT ["/gcs_get_secret"]
CMD ["--help"]
