from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask import request

db=SQLAlchemy()
ma=Marshmallow(db)

def getData():
  return request.get_json()