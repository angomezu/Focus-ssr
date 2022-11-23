import redis
from flask import Flask, jsonify
app = Flask(__name__)


cache = redis.Redis(host='redis', port=6379)
@app.route("/")
def welcome():
    return "<h1>Hi from focus</h1>"


if __name__=="__main__":
    app.run(host='0.0.0.0')
