discordToken=$(bashio::config 'discord_token')
export token=discordToken
echo "Start Execution"
cd /discordBot
echo ls
npm start
echo "End Execution"