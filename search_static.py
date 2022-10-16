import uvicorn
from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from db import select
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# 配置允许所有端跨域
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
)
app.mount('/static', StaticFiles(directory='static'),
          name='static')


@app.get("/search")
def get(keyword: str, page: int, num_per_page: int) -> list:
    res = select(keyword, page, num_per_page)
    songs = []
    for r in res:
        rid = r.get('rid')
        name = r.get('name')
        artist = r.get('artist')
        cover_url = f"127.0.0.1:8000/static/{rid}.jpg"
        mp3_url = f"127.0.0.1:8000/static/{rid}.mp3"
        songs.append({
            "name": name,
            "artist": artist,
            "cover": cover_url,
            "url": mp3_url
        })
    return songs


if __name__ == '__main__':
    uvicorn.run("search_static:app", host="0.0.0.0", port=9000)
