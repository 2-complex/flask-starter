from flask import render_template
from flask import request
from project import app
import json

@app.route('/')
def _index():
    return render_template('index.html')

@app.route('/square', methods=['POST'])
def _square():
    n = int(request.form['number'])
    return json.dumps( {'answer' : n * n } )
