[![Docker Pulls](https://badgen.net/docker/pulls/rheens/mattermost-app?icon=docker&label=pulls)](https://hub.docker.com/r/rheens/mattermost-app)
[![Docker Stars](https://badgen.net/docker/stars/rheens/mattermost-app?icon=docker&label=stars)](https://hub.docker.com/r/rheens/mattermost-app)
[![Docker Image Size](https://badgen.net/docker/size/rheens/mattermost-app?icon=docker&label=image%20size)](https://hub.docker.com/r/rheens/mattermost-app)
![Github stars](https://badgen.net/github/stars/remiheens/mattermost-docker-arm?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/remiheens/mattermost-docker-arm?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/remiheens/mattermost-docker-arm)

# Mattermost server for ARM (V7 or 64)

I found a GitHub repository who built tar.gz release with a sourcecode that ca be run on a ARMv7, but I've the needs to run in a docker container. 

This repository contains a docker-compose.yml to run a mattermost stack onto a raspberry pi

Or, you can find a bunch of script to build docker image based on https://github.com/mattermost/mattermost-server and build within GitHub Actions. 

Frequently, I create new release and new docker image, so if I'm late, feel free to open a Pull Request.

You just have to update ’dependabot/go.mod’ and ’.github/workflows/release.yml’

## How to run

1. Rename docker-compose.yml.local to docker-compose.yml
1. Adapt environnement values
1. Up the stack ’docker-compose up -d’
1. Go to http://localhost:8000

# Credits 

Original repository for source code : https://github.com/SmartHoneybee/ubiquitous-memory
