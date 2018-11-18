# push as ikeikeikeike/docker-python:3.7-slim

FROM python:3.7-slim
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
                software-properties-common \
                apt-transport-https \
                ca-certificates \
                curl \
                sudo \
                wget \
                git \
                rsync \
                telnet \
                bzip2 \
                gcc \
                htop \
                g++ \
                zip \
                bash \
                make \
                openssl \
                libssl-dev \
                make \
                libpq-dev \
                default-mysql-client \
                default-libmysqlclient-dev \
                mysql-client \
                libpq-dev \
                redis-tools \
                gnupg \
                imagemagick \
                libmagickwand-dev \
                gnupg2 \
                gnupg1 \
                build-essential \
        && \
    curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash - \
        && \
    apt-get update && apt-get install -y --no-install-recommends nodejs \
        && \
    npm install -g npm@latest yarn \
        && \
    rm -rf /var/lib/apt/lists/*
