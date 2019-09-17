#!/usr/bin/env bash

@test "that BOOTSTRAP_DIR should be set" {
    run source ./lib/bootstrap

    [[ "${status}" -eq 1 ]]
    [[ "${output}" =~ "BOOTSTRAP_DIR is not set" ]]
}

@test "check that bootstrap can only be called once" {
    __BS__BOOTSTRAP=0

    run source ./your_script.sh

    [[ "${status}" -eq 1 ]]
    [[ "${output}" =~ "Attempted to bootstrap multiple times" ]]
}
