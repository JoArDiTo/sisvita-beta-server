from .model import TemplateTest
from src.api.question.model import Question
from src.api.alternative.model import Alternative
from src.api.clasification.model import Clasification

def get_all():
    return TemplateTest.query.all()

def get_by_id(id):
    template_test = TemplateTest.query.get(id)
    questions = Question.query.filter_by(template_test_id=id).all()
    alternatives = Alternative.query.filter_by(template_test_id=id).all()
    
    return [template_test, questions, alternatives]
    
def calculate_score(template_test_id, score):
    clasifications = Clasification.query.filter_by(template_test_id=template_test_id).all()
    if not clasifications:
        return None
    
    for clasification in clasifications:
      if score >= clasification.min_score and score <= clasification.max_score:
        interpretacion = clasification.interpretation
    return interpretacion