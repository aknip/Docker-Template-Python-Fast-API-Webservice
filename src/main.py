from fastapi import FastAPI

app = FastAPI()

@app.get("/hello")
def hello():
    return {"message": "Hello Cerebrium!"}

@app.get("/health")
def health():
    return "Ok!"