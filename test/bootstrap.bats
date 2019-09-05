#!/usr/bin/env bash

__bs__bootstrapped=1
source ./your_script.sh
echo $?
source ./your_script.sh
echo $?
exit 1

@test "check that bootstrap can only be called once" {
    __bs__bootstrapped=0

    run source ./your_script.sh

    [[ "${status}" -eq 1 ]]
}
