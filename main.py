import json

from flask import Flask
from flask import request
from spider import Spider

app = Flask(__name__)

@app.route("/get_music",methods=["POST"])
def get_music():
    data=request.json
    mp3_list=Spider(**data).get_mp3_urls()
    print(mp3_list)
    return json.dumps(mp3_list)


if __name__ == '__main__':

    app.run()

