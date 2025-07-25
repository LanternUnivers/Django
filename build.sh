set -o errexit
export DJANGO_SETTINGS_MODULE=bookproject.bookproject.settings
pip install -r requirements.txt
python3 bookproject/manage.py collectstatic --no-input
python3 bookproject/manage.py migrate
python3 bookproject/manage.py superuser