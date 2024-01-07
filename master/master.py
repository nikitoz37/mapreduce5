
from flask import Flask
from flask import request, render_template, redirect, url_for, make_response, jsonify
from flask_sqlalchemy import SQLAlchemy
#from config import BaseConfig
from os import environ



app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = environ.get('DB_URL')
db = SQLAlchemy(app)


#from models import *

class Post(db.Model):
    __tablename__ = 'top_words'

    id = db.Column(db.Integer, primary_key=True)
    word = db.Column(db.String(30), unique=True, nullable=False)
    num = db.Column(db.Integer, nullable=False)

    '''def __init__(self, word, num):
        self.word = word
        self.num = num'''
    
    def json(self):
        return {'id': self.id,'word': self.word, 'email': self.num}


'''@app.route('/', methods=['GET'])
def index():
    posts = Post.query.order_by(Post.date_posted.desc()).all()
    return render_template('index.html', posts=posts)

@app.route('/submit', methods=['POST'])
def submit():
    text = request.form['text']
    post = Post(text)
    db.session.add(post)
    db.session.commit()
    return redirect(url_for('index'))'''



@app.route('/test', methods=['GET'])
def test():
  return make_response(jsonify({'message': 'test route'}), 200)



@app.route('/', methods=['GET'])
def index():
    return 'Hello World'



#if __name__ == '__main__':
#    app.run()
