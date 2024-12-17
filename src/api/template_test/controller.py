from flask import Blueprint, jsonify
from src.api.template_test.service import get_all, get_by_id, calculate_score
from src.common.utils import getData

from .schema import template_tests_schema, template_test_selected_schema
from src.api.question.schema import questions_schema
from src.api.alternative.schema import alternatives_schema

template_test = Blueprint('template_test', __name__)

@template_test.route('/', methods=['GET'])
def get_all_template_tests():
    template_tests = get_all()
    if not template_tests:
        return jsonify({'message': 'No template tests found'}), 404
    return jsonify(template_tests_schema.dump(template_tests))
  
@template_test.route('/<id>', methods=['GET'])
def get_template_test_by_id(id):
    [template_test, questions, alternatives] = get_by_id(id)
    
    if not template_test:
        return jsonify({'message': 'Template test not found'}), 404
    
    return template_test_selected_schema.dump({
        'detail': template_test,
        'questions': questions_schema.dump(questions),
        'alternatives': alternatives_schema.dump(alternatives)
    })

@template_test.route('/<id>/calculate', methods=['POST'])
def generate_score(id):
    data = getData()
    values = data['values']
    
    [score, interpretation] = calculate_score(values, id)
        
    return jsonify({
        'score': score,
        'interpretation': interpretation
    })