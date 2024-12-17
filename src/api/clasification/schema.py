from src.common.utils import ma
from marshmallow import fields

class ClasificationSchema(ma.Schema):
    interpretation = fields.String()