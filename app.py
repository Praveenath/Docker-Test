from flask import Flask
from flask import request, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def main():
    return 'The server is up an running!'

@app.route('/test',methods=['GET'])
def test():
    return 'Hello from Flask API'
