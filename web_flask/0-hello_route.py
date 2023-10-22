#!/usr/bin/python3
""" This module is a flask app that displys Hello HBNB when visited"""

from flask import Flask

app = Flask(__name__)
@app.route("/", strict_slashes=False)
def hello():
    """ This function displaysHello HBNB"""
    return 'Hello HBNB!'
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
