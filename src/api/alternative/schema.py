from src.common.utils import ma
from marshmallow import fields

class AlternativeSchema(ma.Schema):
    id = fields.String()
    content = fields.String()
    value = fields.Integer()
    
alternatives_schema = AlternativeSchema(many=True)