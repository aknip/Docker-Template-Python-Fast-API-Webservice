# uv-docker-example

## Run in Gitpod
https://gitpod.io/#https://github.com/aknip/Docker-Template-Python-Fast-API-Webservice


1. create/initialize UV project in folder "src"
docker compose -f docker/compose.yaml run --rm uv-example uv init --no-readme

2. Rename hello.py to main.py

3. Add dependencies in the pyproject.toml

4. lock the dependencies into the uv.lock
docker compose -f docker/compose.yaml run --rm uv-example uv lock

5. Rebuild container

Tests:
docker-compose run fastapi pytest /home/uv-example-user/src/tests
docker-compose run --rm fastapi uvx ruff check --fix


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
docker run -p 8000:8000 -it my_app


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

- https://medium.com/@shaliamekh/python-package-management-with-uv-for-dockerized-environments-f3d727795044
- https://github.com/shaliamekh/uv-docker-example
- additional infos about uv in Docker:
    - https://hynek.me/articles/docker-uv/
    - https://daniel-mannino.medium.com/better-python-programming-with-dev-containers-uv-and-ruff-a56ed7172d9e