set -o errexit
pip install -r requirements.txt
python3 bookprojectmanage.py collectstatic --no-input
python3 bookprojectmanage.py migrate
python3 bookprojectmanage.py superuser