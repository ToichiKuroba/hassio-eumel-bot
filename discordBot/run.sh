#!/usr/bin/with-contenv bashio

discordToken="$(bashio::config 'discord_token')"
echo "Start Execution"
cd /discordBot
echo -e 'token=$discordToken' > .env 
ls
npm start
echo "End Execution"