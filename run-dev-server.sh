#!/usr/bin/env bash

WORKDIR=`dirname "$0"`
PYTHON=`which python3.4`

virtualenv -p "$PYTHON" env
. env/bin/activate
cd "$WORKDIR"

pip3.4 install -r requirements.txt

python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver