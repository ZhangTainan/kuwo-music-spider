import requests
from copyheaders import headers_raw_to_dict


# 定义一个爬虫类
class Spider:
    # 封装请求头
    headers = b'''
    Accept: application/json, text/plain, */*
    Accept-Encoding: gzip, deflate
    Accept-Language: zh,zh-CN;q=0.9,en;q=0.8
    Cookie: _ga=GA1.2.857113574.1642845552; Hm_lvt_cdb524f42f0ce19b169a8071123a4797=1657840598,1658149818,1658150983,1658364956; _gid=GA1.2.1639017380.1658364956; uname3=qq1616934321; t3kwid=131286315; userid=131286315; websid=931938875; pic3=""; t3=qq; Hm_lpvt_cdb524f42f0ce19b169a8071123a4797=1658370991; _gat=1; kw_token=KVURCEC25G
    csrf: KVURCEC25G
    Host: www.kuwo.cn
    Proxy-Connection: keep-alive
    Referer: http://www.kuwo.cn/search/list?key=%E5%91%A8%E6%9D%B0%E4%BC%A6
    User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36
    '''
    # 将请求头字符串转成字典格式
    headers = headers_raw_to_dict(headers)
    # 获取查询歌曲的url
    url_for_search = "http://www.kuwo.cn/api/www/search/searchMusicBykeyWord?key={}&pn={}&rn={}&httpsStatus=1&reqId=df4a2b91-0896-11ed-b2d2-7f9c12d55fee"
    # 获取播放地址的url
    url_for_mp3_url = "http://www.kuwo.cn/api/v1/www/music/playUrl?mid={}&type=mp3&httpsStatus=1&reqId=f0f57820-089d-11ed-a75f-6357d35c8f78"


    # 初始化时拼接url_for_search,接收三个参数:查询关键字,第几页,每页的歌曲数
    def __init__(self, keyword: str, page: int, num_per_page: int):
        self.url_for_search = self.url_for_search.format(keyword, page, num_per_page)

    # 获取音乐信息
    def get_mp3_urls(self):
        # 请求搜索地址
        res_for_search = requests.get(url=self.url_for_search, headers=self.headers).json()
        # 获取请求的歌曲信息列表
        music_list = res_for_search["data"]["list"]
        # 定义一个空列表存储歌曲名和播放地址
        mp3_list = []
        # 遍历列表
        for music in music_list:
            # 获取歌曲的rid用于拼接到请求歌曲播放地址的url
            url_for_mp3 = self.url_for_mp3_url.format(music["rid"])
            # 获取一首歌曲的播放地址
            res_for_mp3 = requests.get(url_for_mp3).json()
            mp3_url = res_for_mp3["data"]["url"]
            # 重新封装一个歌曲信息字典,存放歌曲名、歌手、图片、mp3地址
            # TODO:可能出现没有图片的情况,判断一下是不是以jpg、png结尾,这时需要把图片给个默认值
            mp3 = {"name": music["name"], "pic_url": music["pic"], "artist": music["artist"], "url": mp3_url,
                   "rid": music["rid"]}
            mp3_list.append(mp3)
        return mp3_list


if __name__ == '__main__':
    s = Spider("周杰伦", 1, 30)
    print(s.get_mp3_urls())
