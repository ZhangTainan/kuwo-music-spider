import json

from flask import Flask
from flask import request
from spider import Spider
from db import select
from flask_cors import CORS
app = Flask(__name__)
CORS(app, supports_credentials=True)


@app.route("/search", methods=["POST"])
def get_music():
    data = request.json
    mp3_list = Spider(**data).get_mp3_urls()
    print(mp3_list)
    return json.dumps(mp3_list)


@app.route("/sort")
def sort():
    args = request.args
    keyword = args.get("keyword", "周杰伦")
    page = int(args.get("page", 1))
    num_per_page = int(args.get("num_per_page", 30))
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
    app.run(host="0.0.0.0",port=9000)
