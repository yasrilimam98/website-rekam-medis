import os

import aiml
from flask import Flask
from flask import render_template
from flaskext.mysql import MySQL

#app.config['MYSQLDATABASEHOST'] = 'localhost'
#app.config['MYSQLDATABASEUSER'] = 'root'
#app.config['MYSQL_DATABASE_PASSWORD'] = ''
#app.config['MYSQL_DATABASE_DB'] = 'puskesmas'

kernel = aiml.Kernel()

for filename in os.listdir("brain"):
	if filename.endswith(".aiml"):
		kernel.learn("brain/" + filename)

app = Flask(__name__)


@app.route("/")
def index():
	return render_template("message.html")


@app.route("/<query>")
def api(query):
	return kernel.respond(query)


if __name__ == "__main__":
	app.run(debug=False)