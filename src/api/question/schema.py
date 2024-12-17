from src.common.utils import ma
from marshmallow import fields

class QuestionSchema(ma.Schema):
    id = fields.String()
    content = fields.String()

questions_schema = QuestionSchema(many=True)