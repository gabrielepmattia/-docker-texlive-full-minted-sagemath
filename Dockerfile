FROM gabrielepmattia/texlive-full-minted

WORKDIR /data
VOLUME /data

RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qy sagemath-* && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 