#!/usr/bin/env bash
set -o errexit

echo "✅ Starting build.sh"
echo "📂 Current dir: $(pwd)"
ls -l

echo "🔧 Installing requirements"
pip install -r requirements.txt

echo "📁 Collecting static files"
python manage.py collectstatic --no-input

echo "🧬 Running migrations"
python manage.py migrate
