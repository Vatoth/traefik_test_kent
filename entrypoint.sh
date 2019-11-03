#!/bin/sh

set -e

echo "==> Django setup, executing: migrate"
python manage.py migrate
echo "==> Django setup, executing: collectstatic"
python manage.py collectstatic --noinput

echo "==> Starting Django server..."
python manage.py runserver 0.0.0.0:8000
