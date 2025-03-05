#!/usr/bin/env bash
# exit on error
set -o errexit

# Install python dependencies
pip install -r requirements.txt

# Move to the Django project directory
cd DjangoChat-main

# Collect static files
python manage.py collectstatic --no-input

# Run migrations
python manage.py migrate