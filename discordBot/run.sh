#!/usr/bin/with-contenv bashio

discordToken="$(bashio::config 'discord_token')"
echo "Start Execution"
cd /discordBot
echo $discordToken
export TOKEN=$discordToken
ls
npm start
echo "End Execution"