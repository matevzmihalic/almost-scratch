FROM alpine:3.10

RUN apk --no-cache add ca-certificates

FROM scratch

COPY ./rootfs /
COPY --from=0 /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

USER app
