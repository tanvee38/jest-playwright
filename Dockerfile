FROM ubuntu:bionic

LABEL Maintainer=MOIN

ENV DEBIAN_FRONTEND noninteractive

##### update ubuntu
RUN apt-get update \
    && apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev \
    && apt-get install -y curl net-tools build-essential git wget unzip vim python python-setuptools python3-pip python-dev python-numpy openjdk-8-jdk \
    && apt-get -y install locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

######################################
#### ---- NodeJS from Ubuntu ---- ####
######################################
#RUN apt-get update -y && \
#    apt-get install -y git xz-utils && \
#    apt-get install -y nodejs npm && \
#    npm --version && \
#    apt-get install -y gcc g++ make
#########################################
#### ---- Node from NODESOURCES ---- ####
#########################################
# Ref: https://github.com/nodesource/distributions
ARG NODE_VERSION=${NODE_VERSION:-14}
ENV NODE_VERSION=${NODE_VERSION}
RUN apt-get update -y && \
    apt-get install -y sudo curl git xz-utils && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get install -y gcc g++ make && \
    apt-get install -y nodejs && \
    node -v && npm --version && \
    npm install npm -g


# install tzdata package
RUN apt-get update
ENV TZ=America/Edmonton
RUN apt-get -y install tzdata

# 2. Install WebKit dependencies - playwright
RUN apt-get update && apt-get install -y --no-install-recommends \
    libwoff1 \
    libopus0 \
    libwebp6 \
    libwebpdemux2 \
    libenchant1c2a \
    libgudev-1.0-0 \
    libsecret-1-0 \
    libhyphen0 \
    libgdk-pixbuf2.0-0 \
    libegl1 \
    libnotify4 \
    libxslt1.1 \
    libevent-2.1-6 \
    libgles2 \
    libvpx5 \
    libxcomposite1 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libepoxy0 \
    libgtk-3-0 \
    libharfbuzz-icu0

# 4. Install Chromium dependencies - playwright
RUN apt-get update && apt-get install -y --no-install-recommends \
    libnss3 \
    libxss1 \
    libasound2 \
    fonts-noto-color-emoji \
    libxtst6


# Install Firefox dependencies - playwright
RUN apt-get update && apt-get install -y --no-install-recommends \
    libdbus-glib-1-2 \
    libxt6 \
    libpci-dev

# create a app directory in docker image
RUN mkdir /app

# Set the working directory to /app
WORKDIR /app

RUN npm i -D playwright

# Copy the current directory contents into the container
COPY . .

# Install npm packages
COPY package.json .
COPY package-lock.json .

RUN npm install