FROM postgres:17-alpine

ENV DEFAULT_TIMEZONE UTC
# Mandatory nowdays with PG 10
ENV WAL_LEVEL logical

# Install some packages to use WAL
RUN echo "azure<5.0.0" > pip-constraints.txt
RUN apk add --no-cache \
      build-base \
      curl \
      libc6-compat \
      libffi-dev \
      linux-headers \
      python3-dev \
      py3-pip \
      py-cryptography \
      pv \
    && pip install --upgrade pip --break-system-packages \
    && pip --no-cache-dir install -c pip-constraints.txt 'wal-e<1.0.0' envdir --break-system-packages \
    && rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

# Add wale script
COPY setup-wale.sh /docker-entrypoint-initdb.d/

# Add and configure entrypoint and command
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["postgres"]

VOLUME ["/var/run/postgresql", "/usr/share/postgresql/", "/var/lib/postgresql/data", "/tmp", "/etc/wal-e.d/env"]
