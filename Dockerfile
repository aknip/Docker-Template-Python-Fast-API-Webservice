# Python base
FROM python:3.12-bookworm

RUN apt-get update && apt-get install dumb-init
RUN update-ca-certificates

WORKDIR /app

# Copy source
#COPY ./src ./src
#COPY ./requirements.txt ./
COPY ./requirements.txt /code/requirements.txt

# Install Python deps
RUN pip install -r /code/requirements.txt  

COPY ./src /app/src

# Runtime
EXPOSE 80

#CMD ["dumb-init", "--", "fastapi", "run", "src/main.py", "--port", "8192"]
CMD ["fastapi", "dev", "src/main.py", "--host", "0.0.0.0", "--port", "80"]