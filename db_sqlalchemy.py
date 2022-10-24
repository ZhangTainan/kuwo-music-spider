from sqlalchemy import create_engine
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import or_
from sqlalchemy.dialects.mysql import insert
import pymysql

pymysql.install_as_MySQLdb()

# 格式  <db_type>+<driver_type>://<username>:<password>@<host>:<port>/<db_name>
SQLALCHEMY_DATABASE_URL = "mysql+pymysql://demo:demo@localhost:3306/music"

engine = create_engine(
    SQLALCHEMY_DATABASE_URL,
    echo=True  # 输出日志在终端
)

SessionLocal = sessionmaker(
    autocommit=True,  # 自动提交事务
    autoflush=True,  # 自动进行flush操作
    bind=engine
)

Base = declarative_base()

# 创建会话
session = SessionLocal()


class Music(Base):
    """
    music表的实体类
    """
    __tablename__ = 'music'  # 指定表名
    id = Column(Integer, primary_key=True, autoincrement=True)
    rid = Column(Integer, nullable=False, comment="歌曲id")
    name = Column(String(255), nullable=False, comment="歌曲名")
    artist = Column(String(255), nullable=False, comment="歌手")

    def __repr__(self):
        return str({
            "id": self.id,
            "rid": self.rid,
            "name": self.name,
            "artist": self.artist
        })


def select(keyword: str, page: int, num_per_page: int) -> list:
    return session.query(Music).filter(
        or_(
            Music.name.like(f"%{keyword}%"),
            Music.artist.like(f"%{keyword}%")
        )).all()


def add(rid: int, name: str, artist: str) -> int:
    insert_model = insert(Music).values(rid=rid, name=name, artist=artist)
    result = session.execute(insert_model)
    return result.rowcount


if __name__ == '__main__':
    # print(Base.metadata.create_all(bind=engine))
    print(select("周杰伦", 1, 10))
    # print(add(99999, "test", "test"))
