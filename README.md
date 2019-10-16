# almost-scratch [![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/matevzmihalic/almost-scratch)](https://hub.docker.com/r/matevzmihalic/almost-scratch)

is a Docker image created from scratch that includes:

* user and group `app`
* ca-certificates
* tmp folder

It is intended to be used as a base image for statically compiled binaries, for example Go binaries with CGO disabled.

## Updates

Every month we will update `ca-certificates` and push a new tag in format `year-month`.

## Example

```Dockerfile
# you can use tagged version
FROM matevzmihalic/almost-scratch:2019-10

# or you can use latest
FROM matevzmihalic/almost-scratch
```
