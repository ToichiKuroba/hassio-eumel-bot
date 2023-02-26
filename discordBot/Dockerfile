ARG BUILD_FROM
FROM $BUILD_FROM

RUN echo "Staring" \
    && apk add --no-cache \
        nodejs \ 
        npm \
        gcc \
        wget \
    && echo "Installed Packages" \
    && VERSION=$(curl --silent "https://api.github.com/repos/Sephiloud/eumel-bot/releases/latest" | grep -e '"tag_name": "\K.*?(?=")') \
    && echo "Got version $VERSION" \
    && wget "https://github.com/Sephiloud/eumel-bot/archive/$VERSION.tar.gz" \
    && mkdir /discordBot \
    && echo "Downloaded Source Code" \
    && tar -xzf "$VERSION.tar.gz" -C /discordBot --strip-components=1 \
    && rm "$VERSION.tar.gz" \
    && echo "Unziped Source Code" \
    && cd /discordBot \
    && npm install \
    && echo "Installed Node Packages"

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
