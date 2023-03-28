# Daily-JayChou

## 这是基于[酷我音乐爬虫](https://github.com/ZhangTainan/kuwo-music-spider)

## 发展出来了一个分支项目。

![daily-jaychou](https://cdn.jsdelivr.net/gh/ZhangTainan/Drawing-bed/imgs/daily-jaychou.png)

# 指南

## 后端

### 克隆项目：

`git clone git@github.com:ZhangTainan/kuwo-music-spider.git`

### 安装依赖

`pip install -r requirements.txt`

### 导入数据库

```sql
drop database if exists music;
create database music default charset utf8;
use music;
-- 下面中括号的内容替换成daily-jaychou.sql的绝对路径
source [absolute path of daily_jaychou.sql];
```

### 配置数据库

在`db_sqlalchemy.py`中修改自己的数据库链接信息



### 运行

`python daily-jaychou.py`

![image-20230328105927804](https://cdn.jsdelivr.net/gh/ZhangTainan/Drawing-bed/imgs/image-20230328105927804.png)

## 前端

前端是基于vite和vue3的项目。

### 安装依赖与启动服务

```bash
cd daily-jaychou-fe
npm i
npm run dev
```

![image-20230328110326428](https://cdn.jsdelivr.net/gh/ZhangTainan/Drawing-bed/imgs/image-20230328110326428.png)

在浏览器中访问本地的5173端口即可。
