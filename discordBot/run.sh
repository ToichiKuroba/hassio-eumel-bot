export token=$(bashio::config 'discord_token');
echo "Start Execution"
cd /discordBot
echo ls
npm start
echo "End Execution"