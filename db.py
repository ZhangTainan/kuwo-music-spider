import pymysql
from pymysql.constants import CLIENT

conn = pymysql.connect(
    host='localhost',
    port=3306,
    user='demo',  # 用户名
    passwd='demo',  # 密码
    charset='utf8',  # 编码
    client_flag=CLIENT.MULTI_STATEMENTS,  # 多语句执行
    autocommit=True,  # 自动提交事务
    cursorclass=pymysql.cursors.DictCursor  # 配置返回字典类型数据
)
# TODO 存在数据库连接池过期问题
cursor = conn.cursor()

create_db = '''
    DROP DATABASE IF EXISTS `music`;
    CREATE DATABASE IF NOT EXISTS `music` Default CHARSET utf8 ;
    USE music;
'''
create_table = '''
CREATE TABLE `music`.`music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

'''

# TODO:存在sql注入问题
insert_sql = '''
INSERT INTO `music`.`music` (`rid`, `name`, `artist`) 
VALUES ( '{}', '{}', '{}');
'''

select_sql = '''
SELECT DISTINCT `rid`, `name`, `artist` 
FROM `music`.`music` WHERE `name` LIKE '%{}%' OR `artist` LIKE '%{}%' LIMIT {},{};
'''


def create():
    cursor.execute(create_db)
    cursor.execute(create_table)


def insert(rid: int, name: str, artist: str) -> int:
    sql = insert_sql.format(rid, name, artist)
    row = cursor.execute(sql)
    return row


def select(keyword: str, page: int, num_per_page: int) -> list:
    sql = select_sql.format(keyword, keyword, page * num_per_page - num_per_page, num_per_page)
    cursor.execute(sql)
    res = cursor.fetchall()
    return res


if __name__ == '__main__':
    cursor.execute(create_db)
    cursor.execute(create_table)
    print(insert(100, "demo", "demo"))
    print(select("demo", 1, 10))
