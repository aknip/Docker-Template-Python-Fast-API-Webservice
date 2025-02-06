# Docker

!

## Run in Gitpod
https://gitpod.io/#https://github.com/aknip/Docker-Template-Python-Fast-API-Webservice


## Run in local Docker
docker-compose up --build
Folder src can be edited 

### Execute commands inside Docker
- Use `run` for a single one-off execution and starting a container.
- Use `exec` for executing a command in a running container.
Examples:
- docker-compose run fastapi bash
- docker-compose run fastapi python3 --version
- docker-compose exec fastapi bash
- docker-compose exec fastapi python src/marimoapp.py

## Docker
docker build -t my_app .
docker run -p 8192:8192 -it my_app


## fly.io
- Install CLI: brew install flyctl
- Init existing app (first deploy): 
    - fly launch --now
- Update: 
    - fly deploy



# Sources
- https://medium.com/geekculture/deploy-docker-images-on-fly-io-free-tier-afbfb1d390b1
- https://github.com/fly-apps

- https://medium.com/@abderraoufbenchoubane/setup-a-python-environment-with-docker-a4e38811e0d3
- https://github.com/Abderraouf99/medium-article-source-code/tree/main/docker-env



