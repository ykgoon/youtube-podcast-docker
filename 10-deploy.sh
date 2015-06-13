docker run -d \
  -v $(pwd)/app:/srv/youtube \
  -p 80:80 \
  --name youtube_podcast \
  youtube_podcast:ubuntu \
  node server.js
