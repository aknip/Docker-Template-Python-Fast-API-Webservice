APP_NAME ?= fastapi-app
 
build:
	docker build -t ${APP_NAME} .
	
run:
	docker run -p 8000:8000 -d --rm --name "${APP_NAME}-container" ${APP_NAME} 

enter:
	$(info )
	$(info ************  Entering container: bash ************)
	docker exec -it "${APP_NAME}-container" bash

down:
	docker stop "${APP_NAME}-container"



## make build      # Build everything to run the project
## make up         # Bring up the development environment
## make enter      # Enter a shell development environment
## make start      # Run the development server
## make down       # Stop the external services
## make clean      # Shut down and remove services
## make test       # Run the test suite
## make lint       # Run linting tests on the project
## make release    # Generate release artifacts for the project
## make deploy     # Deploy the project