#!/bin/bash

set -e

docker compose up --build -d sonic

sleep 10

docker compose run --rm pytest bash -c 'uv run pytest /app'

docker compose down -v -t 0
