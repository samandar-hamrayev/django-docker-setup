#!/bin/sh

echo "📦 DB waiting..."
while ! nc -z db 5432; do
  sleep 0.5
done

echo "📦 DB ready! Starting app..."
python manage.py migrate --noinput
python manage.py collectstatic --noinput

exec "$@"