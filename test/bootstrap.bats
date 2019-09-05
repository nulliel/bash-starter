#!/usr/bin/env bash

CACHE_DIR="$(mktemp -d)" source "./lib/bootstrap"
CACHE_DIR="$(mktemp -d)" source "./lib/bootstrap"

@test "check that bootstrap can only be called once" {
    __bs__bootstrapped=0

    CACHE_DIR="" source "./lib/bootstrap"

    [[ "${status}" -eq 1 ]]
}
