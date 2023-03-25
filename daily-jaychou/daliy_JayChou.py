from flask import Flask
from flask import request
from flask_cors import CORS
from copyheaders import headers_raw_to_dict
from db_sqlalchemy import search_JayChou, random_JayChou
from get_music_with_lrc import getMusicWithLrc

app = Flask(__name__)
CORS(app, supports_credentials=True)


@app.route('/daily-jaychou/search')
def search():
    name = request.args.get("name", "一点点")
    music = search_JayChou(name)
    return getMusicWithLrc(music.rid)


@app.route("/daily-jaychou/random")
def random():
    music = random_JayChou()
    return getMusicWithLrc(music.rid)


if __name__ == '__main__':
    # search()
    # print(random())
    app.run(host='0.0.0.0', port=8000)
