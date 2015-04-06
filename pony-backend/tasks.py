__author__ = 'm12sl'

from celery import Celery

app = Celery('tasks', backend='amqp', broker='amqp://guest@192.168.30.10//')

@app.task
def add(x, y):
    return x + y