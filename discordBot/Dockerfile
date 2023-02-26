ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
        nodejs \ 
        npm \
        gcc \
        wget \
    && VERSION=$(curl --silent "https://api.github.com/repos/Sephiloud/eumel-bot/releases/latest" | grep -e '"tag_name": "\K.*?(?=")') \
    && wget "https://github.com/Sephiloud/eumel-bot/archive/$VERSION.tar.gz" \
    && mkdir /discordBot \
    && tar -xzf "$VERSION.tar.gz" -C /discordBot --strip-components=1 \
    && rm "$VERSION.tar.gz" \
    && cd /discordBot \
    && npm install

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
