# scratch-improved [![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/matevzmihalic/scratch-improved)](https://hub.docker.com/r/matevzmihalic/scratch-improved)

is a Docker image created from scratch that includes:

* user and group `app`
* ca-certificates
* `/tmp` folder

It is intended to be used as a base image for statically compiled binaries, for example Go binaries with CGO disabled.

## Example

```Dockerfile
FROM golang:1.13

COPY . .
RUN CGO_ENABLED=0 GOARCH=arm64 go build -o /main

FROM matevzmihalic/scratch-improved:2019-10

COPY --from=0 /main /
ENTRYPOINT ["/main"]
CMD ["--help"]
```

This example docker file will cross-compile go code for arm64 architecture in first stage and in next stage copy the compiled binary and set it as entrypoint.

When you run a container from that image it will execute the binary `/main` as user `app`.

This docker file can be built on any machine and the resulting image can be ran on arm64 machine or on whatever you set the `GOARCH` to.

## Updates

Every month a new tag will be created (in format `year-month`) which will include updated `ca-certificates`.
