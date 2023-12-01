from a2wsgi import ASGIMiddleware
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def index():
    return {"message": "OK"}


wsgi_app = ASGIMiddleware(app)
