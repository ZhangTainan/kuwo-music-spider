import requests
from copyheaders import headers_raw_to_dict
from db_sqlalchemy import add
import time

headers = b'''
   Accept: application/json, text/plain, */*
    Accept-Encoding: gzip, deflate
    Accept-Language: zh-CN,zh;q=0.9,en;q=0.8
    Cache-Control: no-cache
    Connection: keep-alive
    Cookie: _ga=GA1.2.857113574.1642845552; uname3=qq1616934321; t3kwid=131286315; userid=131286315; websid=931938875; pic3=""; t3=qq; Hm_lvt_cdb524f42f0ce19b169a8071123a4797=1679746232; _gid=GA1.2.1560818918.1679746232; Hm_lpvt_cdb524f42f0ce19b169a8071123a4797=1679747439; kw_token=3ATO2OR0CHN
    csrf: 3ATO2OR0CHN
    Host: bd.kuwo.cn
    Pragma: no-cache
    Referer: http://bd.kuwo.cn/search/list?key=%E5%91%A8%E6%9D%B0%E4%BC%A6
    User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36
'''
# 将请求头字符串转成字典格式
headers = headers_raw_to_dict(headers)
# 获取查询歌曲的url
url_for_search = "http://bd.kuwo.cn/api/www/search/searchMusicBykeyWord?key={}&pn={}&rn={}&httpsStatus=1&reqId=14711790-cb0e-11ed-bb1c-a7020bb36a71"


def get_and_store_info():
    for i in range(1, 18):
        url = url_for_search.format("周杰伦", i, 30)
        print(url)
        res = requests.get(url=url, headers=headers)
        print(res.status_code)
        json_data = res.json()
        music_list = json_data.get("data").get("list")
        for music in music_list:
            print(music["name"])
            add(music["rid"], music["name"], music["artist"])
        time.sleep(3)




if __name__ == '__main__':
    get_and_store_info()
    # add(123,"abc","周杰伦")
