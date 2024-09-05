from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_pymongo import PyMongo

app = Flask(__name__)

# MySQL 설정
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://username:password@localhost/db_name'
db = SQLAlchemy(app)

# MongoDB 설정
app.config['MONGO_URI'] = 'mongodb://localhost:27017/db_name'
mongo = PyMongo(app)

# Blueprint 등록 (blueprints/test_db.py에 있는 블루프린트)
from blueprints.test_db import test_db_bp
app.register_blueprint(test_db_bp)

if __name__ == '__main__':
    app.run(debug=True)

