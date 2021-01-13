FROM ubuntu:20.04
LABEL maintainer="andriana.khadafi@warungpintar.co"

ENV DISPLAY :0
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
USER root

RUN apt update \
    && apt install -y \
        libgbm1 \
        xdg-utils \
        python3 \
        python3-pip \
        openjdk-8-jdk \
        python3-gi \
        gobject-introspection \
        gir1.2-gtk-3.0 \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        xvfb \
        libxrandr-dev \
        curl \
        mesa-utils \
        android-tools-adb \
        libmysqlclient-dev \
        && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
        && apt install -y nodejs \
        && rm -rf /usr/bin/python \
        && rm -rf /usr/bin/pip \
        && ln -s /usr/bin/python3 /usr/bin/python \
        && ln -s /usr/bin/pip3 /usr/bin/pip \
        && curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add \
        && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
        && apt -y update \
        && apt -y install google-chrome-stable \
        && npm install -g npm@latest --verbose \
        && npm -g install chromedriver@86.x.4240.22 --unsafe-perm=true --allow-root --verbose \
        && npm -g install appium@1.18.3 --unsafe-perm=true --allow-root --verbose \
        && npm -g install appium-chromedriver --unsafe-perm=true --allow-root --verbose \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-320.0.0-linux-x86_64.tar.gz \
    && tar xzvf google-cloud-sdk-320.0.0-linux-x86_64.tar.gz \
    && echo "if [ -f '/google-cloud-sdk/path.bash.inc' ]; then . '/google-cloud-sdk/path.bash.inc'; fi" >> $HOME/.bashrc \
    && echo "if [ -f '/google-cloud-sdk/completion.bash.inc' ]; then . '/google-cloud-sdk/completion.bash.inc'; fi" >> $HOME/.bashrc

COPY ./requirements.txt .

COPY ./servers.txt .

RUN pip install --user --upgrade pip  \
    && pip install -r requirements.txt \
    && pip install -r servers.txt

