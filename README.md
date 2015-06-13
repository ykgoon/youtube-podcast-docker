= YouTube Podcast Docker

This project makes use of [YouTube-Audio-To-Podcast](https://github.com/danielpgross/yt-audio-to-podcast)
to turn any given YouTube channel into downloadable audio file in RSS feed.

It creates and runs a Docker container that has everything you need.

== Required software

- Docker
- git
- Docker Compose (optional)

== How To Use

1. Run `00-build.sh`
  - It builds the Docker image with the necessary packages
  - It will then ask for YouTube API key; follow the link to obtain one
1. Run `10-deploy.sh` and enjoy

