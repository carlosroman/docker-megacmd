FROM ubuntu:bionic

RUN apt-get update \
    && apt-get -y install \
    --no-install-recommends \
    curl \
    gnupg2 \
    ca-certificates \
    && update-ca-certificates \
    && curl  \
    https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megacmd-xUbuntu_18.04_amd64.deb \
    --output /tmp/megacmd.deb \
    && apt install /tmp/megacmd.deb -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/megacmd.*

ENTRYPOINT ["/usr/bin/mega-cmd"]

