#!/usr/bin/env bash

if ! command -v bats >/dev/null 2>&1; then
    printf "Please install 'bats' to run bash tests\n" 1>&2
    exit 1
fi

bats ./test # ./test/**/*
