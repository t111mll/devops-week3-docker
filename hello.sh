#!/usr/bin/env bash
set -e

echo "Hello from inside a Docker container!"
echo "Current date: $(date)"

echo "Environment: ${APP_ENV:-development}"
