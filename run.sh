#!/bin/bash

# Start Gunicorn (Web Server)
# If your web code is in keep_alive.py, change 'app:app' to 'keep_alive:app'
echo "Starting Gunicorn..."
gunicorn app:app --bind 0.0.0.0:$PORT --daemon --worker-class gevent --workers 1

# Start the Telegram Bot
# Based on your structure, ensure this is the main entry point
echo "Starting Bot..."
python3 bot.py
