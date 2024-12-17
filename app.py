from flask import Flask
from flask_cors import CORS
from src.api.template_test.controller import template_test
from src.common.utils import db
from flask_migrate import Migrate
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)

CORS(app, resources={r"/*": {"origins": os.getenv("CLIENT_URL")}})

basedir = os.path.abspath(os.path.dirname(__file__))
DATABASE_CONNECTION = 'sqlite:///' + os.path.join(basedir, 'src/database/sisvita.db')

app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_CONNECTION
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

app.register_blueprint(template_test, url_prefix='/api/template_test')

db.init_app(app)
migrate = Migrate(app, db)

with app.app_context():
    db.create_all()

if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True,port=5000)