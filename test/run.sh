#!/usr/bin/env bash

if ! command -v docker >/dev/null 2>&1; then
    printf "Please install 'docker' to run bash tests\n" 1>&2
    exit 1
fi

docker run -it -v "$(pwd):/app" bats/bats:latest /app/test
