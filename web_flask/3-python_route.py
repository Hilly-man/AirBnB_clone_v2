#!/usr/bin/python3
""" This script starts a Flask web application """
from flask import Flask, render_template
app = Flask(__name__)

# Route to display "Hello HBNB!"
@app.route('/', strict_slashes=False)
def hello_hbnb():
    return "Hello HBNB!"

# Route to display "HBNB"
@app.route('/hbnb', strict_slashes=False)
def hbnb():
    return "HBNB"

# Route to display "C " followed by the value of the text variable
@app.route('/c/<text>', strict_slashes=False)
def c(text):
    text = text.replace('_', ' ')  # Replace underscores with spaces
    return "C {}".format(text)

# Route to display "Python " followed by the value of the text variable (with a default value)
@app.route('/python/', defaults={'text': 'is cool'}, strict_slashes=False)
@app.route('/python/<text>', strict_slashes=False)
def python(text):
    text = text.replace('_', ' ')  # Replace underscores with spaces
    return "Python {}".format(text)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
