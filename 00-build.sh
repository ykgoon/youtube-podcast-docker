git clone https://github.com/danielpgross/yt-audio-to-podcast app

docker build --tag=youtube_podcast:ubuntu .

# Ask for YouTube API
echo "Get your YouTube API from https://console.developers.google.com/project"
echo "What's your API key?"
read yt_key

# Replace API key into config file
sed -i "s/\[YOUR API KEY HERE\]/$yt_key/g" ./app/config/local.json
