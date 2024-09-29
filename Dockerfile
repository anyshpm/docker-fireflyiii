ARG FIREFLYIII_VERSION=develop
FROM fireflyiii/core:${FIREFLYIII_VERSION}

MAINTAINER Anyshpm Chen<anyshpm@anyshpm.com>
LABEL org.opencontainers.image.source https://github.com/anyshpm/docker-fireflyiii

RUN set -x && \
    sed -i 's/\([ \t]*StartServers[ \t]*\)[0-9]\+/\11/g' /etc/apache2/mods-enabled/mpm_prefork.conf && \
    sed -i 's/\([ \t]*MinSpareServers[ \t]*\)[0-9]\+/\11/g' /etc/apache2/mods-enabled/mpm_prefork.conf && \
    sed -i 's/\([ \t]*MaxSpareServers[ \t]*\)[0-9]\+/\13/g' /etc/apache2/mods-enabled/mpm_prefork.conf
