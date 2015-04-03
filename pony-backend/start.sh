#!/usr/bin/env bash

venv/bin/celery -A tasks worker loglevel=info