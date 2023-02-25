ARG BUILD_FROM
FROM $BUILD_FROM

RUN apt-get update \
    && apt-get install -y \
        gcc \
        wget \
    && VERSION=$(curl --silent "https://api.github.com/repos/Sephiloud/eumel-bot/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') \
    && wget "https://github.com/Sephiloud/eumel-bot/archive/$VERSION.tar.gz" \
    && mkdir /discordBot \
    && tar -xzf "$VERSION.tar.gz" -C /discordBot --strip-components=1 \
    && rm "$VERSION.zip" \
    && cd /discordBot \
    && npm install \

CMD [ "/discordBot", "export token=$(bashio::config 'discord_token'); npm start" ]
