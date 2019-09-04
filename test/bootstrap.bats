#!/usr/bin/env bash

@test "check that bootstrap can only be called once" {
    skip
    __bs__bootstrap_check=0

    run source "./bootstrap"

    [[ "${status}" -eq 50 ]]
}
