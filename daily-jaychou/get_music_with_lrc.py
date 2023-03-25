import requests

# 获取mp3的请求地址
url_for_mp3_url = "http://www.kuwo.cn/api/v1/www/music/playUrl?mid={}&type=mp3&httpsStatus=1&reqId=f0f57820-089d-11ed-a75f-6357d35c8f78"
# 获取歌词的请求地址
url_for_lrc_url = "http://m.kuwo.cn/newh5/singles/songinfoandlrc?musicId={}&httpsStatus=1&reqId=d995e650-cb08-11ed-9078-f18e2ace4065"


def getMusicWithLrc(musicId):
    mp3_res = requests.get(url_for_mp3_url.format(musicId))
    mp3_url = mp3_res.json().get("data").get("url")
    lrc_res = requests.get(url_for_lrc_url.format(musicId))
    lrc = lrc_res.json().get("data").get("lrclist")
    return {
        "mp3": mp3_url,
        "lrc": lrc
    }


if __name__ == '__main__':
    print(getMusicWithLrc(4148191))
