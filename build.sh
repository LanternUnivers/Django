#!/usr/bin/env bash
set -o errexit

# DJANGO_SETTINGS_MODULE は render.yaml の envVars で設定しているのでここでは不要
# cd /opt/render/project/src は不要（workDir で解決される）

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate
