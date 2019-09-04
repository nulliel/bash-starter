#!/usr/bin/env bash

@test "Calling __cs__coproc_open more than once should error" {
    source "./core/coproc"
    __bs__coproc_open
    run __bs__coproc_open

    [[ "${status}" -eq 1 ]]
    [[ "${output}" = "Attempting to open multiple coprocs." ]]
}

@test "Calling __cs__coproc_kill without a coproc open should error" {
    source "./core/coproc"
    run __bs__coproc_kill

    [[ "${status}" -eq 1 ]]
    [[ "${output}" = "Attempting to kill an inactive coproc." ]]
}

@test "Calling __cs__coproc_read without a coproc should error" {
    source "./core/coproc"
    run __bs__coproc_read

    [[ "${status}" -eq 1 ]]
    [[ "${output}" = "Attempting to read from a closed coproc." ]]
}

@test "Calling __cs__coproc_read should print a single-line buffer" {
    source "./core/coproc"

    __bs__coproc_open
    __bs__coproc_send "echo hello"
    run __bs__coproc_read

    [[ "${status}" -eq 0 ]]
    [[ "${output}" = "hello" ]]
}

@test "Calling __cs__coproc_read should print a multi-line buffer" {
    source "./core/coproc"

    __bs__coproc_open
    __bs__coproc_send "printf \"hello\nworld\""
    run __bs__coproc_read

    [[ "${status}" -eq 0 ]]
    [[ "${output}" =~ ^hello.world ]]
}

@test "Calling __cs__coproc_read works inside a subshell" {
    source "./core/coproc"

    __bs__coproc_open
    __bs__coproc_send "echo test"

    [[ "$(__bs__coproc_read)" = "test" ]]
}

@test "Calling __cs__coproc_send without a coproc should error" {
    source "./core/coproc"
    run __bs__coproc_send

    [[ "${status}" -eq 1 ]]
    [[ "${output}" = "Attempting to send to a closed coproc." ]]
}

@test "Calling __cs__coproc_send without a coproc should error" {
    source "./core/coproc"
    run __bs__coproc_send

    [[ "${status}" -eq 1 ]]
    [[ "${output}" = "Attempting to send to a closed coproc." ]]
}

@test "Calling __cs__coproc_send sends commands to the coproc" {
    source "./core/coproc"

    __bs__coproc_open
    __bs__coproc_send "echo coproc"
    run __bs__coproc_read

    [[ "${status}" -eq 0 ]]
    [[ "${output}" = "coproc" ]]
}
