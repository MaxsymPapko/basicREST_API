from flask import jsonify
import datetime
from app import my_app
@my_app.route('/healthcheck', methods=['GET'])
def healthcheck():
    return jsonify({
        "status": "healthy",
        "timestamp": datetime.datetime.utcnow().isoformat()
    }), 200
@my_app.route('/', methods=['GET'])
def home():
    return "This is placeholder route", 200