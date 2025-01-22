from sqlalchemy import create_engine
from pymysql import Date, connect

# Create a SQLAlchemy engine to connect to the MySQL database
class Database:
    def connection(self):
        engine = create_engine("mysql+mysqlconnector://root:example@mysql_db/globant")
        return engine