#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Installing dependencies..."
bundle install --without development test

echo "Precompiling assets..."
bundle exec rails assets:precompile

echo "Running database setup..."
# Check if database exists, if not create it
bundle exec rails db:create || echo "Database might already exist"

echo "Running migrations..."
bundle exec rails db:migrate

echo "Build completed successfully!"
