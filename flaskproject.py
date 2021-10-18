from flask import Flask
from markupsafe import escape
import requests,json
from flask import request,jsonify

app  = Flask(__name__)


data = {
    "course": 411,
    "courseName": "Software in Telecommunications",
    "releaseYear": 2021,
    "courseActive": True,
    "droppedStudents": None,
    "date": "06/10/2021",
    "someData": [[11, 2], [22, 4], [33, 1], [44, 5]],
    "scores": {"a": 77, "b": 46, "c": 91}
}

#create a home page
@app.route("/")
def home():
    return "hello home"
#create another page with route
@app.route("/world")
def world():
    return "hello world"
#create a page with an atribute
@app.route("/user/<username>/<int:userage>")
def show_user_name(username,userage):
    return f'Session user name : {escape(username)}' '\n' f'age : {escape(userage)}'

# page with data
@app.route('/scores',methods=['GET'])
def data_scores():
    return jsonify(data['scores'])


if __name__ == "__main__":
    app.run()

