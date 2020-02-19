#!/usr/bin/env bash

@test "wget or curl must be installed" {
    run PATH="/usr/bin/bash" source "./your_script.sh"

    [[ "${status}" -eq 1 ]]
    [[ "${output}" =~ "Bash Starter requires either wget or curl to be installed" ]]
}

@test "wget install works" {
    run source "./your_script.sh"
}

@test "curl install works" {
    run source "./your_script.sh"
}
