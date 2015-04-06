__author__ = 'm12sl'
from flask import Flask
from celery import Celery
celery = Celery('tasks', backend='amqp', broker='amqp://guest@192.168.30.10//')

app = Flask(__name__)


@app.route("/")
def hello():
    res = celery.send_task('tasks.add', (2, 3))
    return "Hello World! %s %s" % (str(res), str(res.result))


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=6000, debug=True)