from fastapi import FastAPI

app = FastAPI()

@app.get("/hello")
def hello():
    return {
        "message": "Hello World!"}

@app.get("/health")
def health():
    return "Ok!"

@app.get("/healthcheck")
def healthcheck() -> dict[str, str]:
    return {
        "status": "OK"}
