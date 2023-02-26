#!/usr/bin/with-contenv bashio

discordToken="$(bashio::config 'discord_token')"
echo "Start Execution"
cd /discordBot
export token=$discordToken
ls
npm start
echo "End Execution"