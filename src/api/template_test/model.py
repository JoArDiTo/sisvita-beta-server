from src.common.utils import db
from dataclasses import dataclass
from uuid import uuid4

@dataclass
class TemplateTest(db.Model):
  __tablename__ = 'template_test'

  id = db.Column(db.String(36), primary_key=True)
  slug = db.Column(db.String(100), nullable=False, unique=True)
  name = db.Column(db.String(100), nullable=False)
  author = db.Column(db.String(80), nullable=False)
  description = db.Column(db.String(255), nullable=False)
  
  question = db.relationship('Question', backref='template_test',cascade='all, delete-orphan', lazy=True)
  alternative = db.relationship('Alternative', backref='template_test',cascade='all, delete-orphan', lazy=True)
  clasification = db.relationship('Clasification', backref='template_test',cascade='all, delete-orphan', lazy=True)
  
  def __init__(self, slug, name, author, description):
    self.id = str(uuid4())
    self.slug = slug
    self.name = name
    self.author = author
    self.description = description