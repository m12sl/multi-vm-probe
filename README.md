# Multi VM stand

Just testing stand for Multi-VM system.

There are two VMs:
- pony-backend (rabbitmq-server and celery workers)
- unicorn-frontend (nginx + flask + task sender) 

All shell provision scripts moved to vagrant/ just for simplicity.


### TODO
1. Invoke remote Chord/Chain from frontend
1. Celery config
1. MongoDB for storing details
1. fix nginx settings + uwsgi or fix network problem
1. rabbitmq-server right settings
1. monitoring tool for celery
1. monitoring tool for uwsgi