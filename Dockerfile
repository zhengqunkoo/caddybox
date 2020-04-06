FROM scratch
LABEL maintainer="Josh Wood <j@joshix.com>"
LABEL caddy_version="2.0.0-rc.1+github.com/rydesun/tls.dns/providers/cloudflare@fffa0bf"
COPY rootfs /
USER 65534:65534
EXPOSE 8080 8443
WORKDIR /var/www/html
ENTRYPOINT ["/bin/caddy"]
