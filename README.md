gcs_get_secret
==============

A tiny golang program to fetch secret values from GCS Secret Manager.

### Getting

Docker images for `amd64` and `arm64` are published to Docker Hub. You can use
the image in your Dockerfile as a stage to copy from. For example:

```
FROM ratiopbc/gcs_get_secret:latest AS ggs
FROM alpine:latest
COPY --from=ggs /gcs_get_secret /usr/local/bin/
```

### Usage

```
$ gcs_get_secret -p project-id -s secret-id
secret_value
```
