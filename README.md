# almost-scratch

is a Docker image created from scratch that includes:

* user and group `app`
* ca-certificates
* tmp folder

It is intended to be used as a base image for statically compiled binaries, for example Go binaries with CGO disabled.
