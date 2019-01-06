FROM debian:latest
LABEL maintainer="kontakt@maximeveit.de"

ENV DUPLICATI_DOWNLOAD="https://updates.duplicati.com/beta/duplicati_2.0.4.5-1_all.deb"

# Download and install duplicati
RUN apt-get update -yq \
    && apt-get install -yq wget
RUN wget "${DUPLICATI_DOWNLOAD}" -O "duplicati_current_version.deb"
RUN dpkg -i duplicati_current_version.deb \
    || apt-get install -yqf \
    && dpkg -i duplicati_current_version.deb

# Cleanup
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm duplicati_current_version.deb

# Add scripts and set entrypoint
ADD scripts/run.sh /opt/run.sh
ENTRYPOINT ["/opt/run.sh"]
