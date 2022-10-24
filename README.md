# kuwo-music-spider

## 这是一个简单的酷我音乐爬虫

![image-20220926232708846](https://cdn.jsdelivr.net/gh/ZhangTainan/Drawing-bed/imgs/image-20220926232708846.png)

- ### spider.py

  - #### 封装的一个酷我音乐爬虫类，直接运行可以获取到MP3地址等信息，点击链接可以直接打开，后期将更新下载的程序

- ### db.py

  - #### 原生pymysql操作数据库(TODO注释中标注了存在的一些问题)

- ### db_sqlalchemy.py

  - #### 使用sqlalchemy的方式操作数据库（推荐）

- ### download.py

  - #### 用于下载并将歌曲信息存入数据库

- ### search_static

  - #### 基于fastapi起的接口服务

  - #### 从数据库中搜索已经下载的歌曲信息，并得到对应的静态资源地址

  - #### 内置一个get接口，在浏览器访问host:port/docs即可进行测试接口

  - ![image-20221024135303499](https://cdn.jsdelivr.net/gh/ZhangTainan/Drawing-bed/imgs/image-20221024135303499.png)

- ### main.py

  - #### 是用flask起的一个服务，可以自己用来做接口

  - #### 内置的search接口可以直接使用

  - #### 内置的sort接口使用时请确保已经使用download.py将歌曲下载到本地和数据库

## 使用方式

### 克隆项目

```bash
git clone git@github.com:ZhangTainan/kuwo-music-spider.git
```

### 进入项目目录

```bash
cd kuwo-music-spider
```

### 安装第三方库

```bash
pip install -r requirements.txt
```

#### 	注：

###### 		*本项目使用python的版本为3.10.6，如果该过程出现安装包失败，请提升python版本或者降低包的版本*

### 运行项目

##### 	每个.py文件均可单独运行
