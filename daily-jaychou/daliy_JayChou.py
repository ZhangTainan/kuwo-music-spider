from flask import Flask
from flask import request,jsonify
from flask_cors import CORS
from copyheaders import headers_raw_to_dict
from db_sqlalchemy import search_JayChou, random_JayChou
from get_music_with_lrc import getMusicWithLrc

app = Flask(__name__)
CORS(app, supports_credentials=True)


@app.route('/daily-jaychou/search')
def search():
    name = request.args.get("name", "一点点")
    music_list = search_JayChou(name)
    info_list=[]
    for music in music_list:
        info_list.append(getMusicWithLrc(music.rid))
    return info_list


@app.route("/daily-jaychou/random")
def random():
    music = random_JayChou()
    return getMusicWithLrc(music.rid)


if __name__ == '__main__':
    # search()
    # print(random())
    app.run(host='0.0.0.0', port=8000)
