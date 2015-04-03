# Multi VM stand

Just testing stand for Multi-VM system.

There are two VMs:
- `pony-backend` (rabbitmq-server and celery workers)
- `unicorn-frontend` (nginx + flask + task sender) 

All shell provision scripts moved to vagrant/ folder just for simplicity.


### TODO
- [ ] Invoke remote Chord/Chain from frontend
- [ ] Celery config
- [ ] Mo ngoDB for storing details
- [ ] Fix nginx settings + uwsgi or fix network problem
- [ ] Fix rabbitmq-server settings, 
- [ ] Monitoring tool for celery
- [ ] Monitoring tool for uwsgi