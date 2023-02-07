# Application template for Mattermost

With this repository, you can run a Mattermost server based on docker container.

You can run it on any platform, but the needs comes from own use case to run a mattermost server on a Raspberry Pi. 

I found a GitHub repository who built tar.gz release with a sourcecode that ca be run on a ARMv7, but I've the needs to run in a docker container. 

## How to run

1. Rename docker-compose.yml.local to docker-compose.yml
1. Adapt environnement values
1. Up the stack ’docker-compose up -d’
1. Go to http://localhost:8000
