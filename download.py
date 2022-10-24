import requests
from spider import Spider
from threading import Thread
from concurrent.futures import ThreadPoolExecutor
from xpinyin import Pinyin
import os
from db_sqlalchemy import add as insert


def isAllChinese(s: str) -> bool:
    """
    判断字符串是否为纯中文
    :param s: 待判定的字符串
    :return: 判断结果
    """
    for c in s:
        if not ('\u4e00' <= c <= '\u9fa5'):
            return False
    return True


def download(directory: str, url: str, rid: int, name: str, pic_url: str, artist: str):
    print(f"开始下载:{name}...")
    mp3 = requests.get(url=url).content
    img = requests.get(url=pic_url).content
    with open(f"{directory}/{str(rid)}.mp3", "wb") as f:
        f.write(mp3)
    with open(f"{directory}/{str(rid)}.jpg", "wb") as f:
        f.write(img)
    insert(rid, name, artist)
    # insert()
    print(f"{name}下载完成！")


if __name__ == '__main__':
    singer = input('请输入歌手名:')
    page=int(input("请输入页码:"))
    number=int(input("请输入数量:"))
    spider = Spider(keyword=singer, page=page, num_per_page=number)
    if isAllChinese(singer):
        singer = Pinyin().get_pinyin(singer)
    if not os.path.exists(singer):
        os.mkdir(singer)
    music_list = spider.get_mp3_urls()
    with ThreadPoolExecutor(20) as t:
        for music in music_list:
            t.submit(download, singer, **music)

