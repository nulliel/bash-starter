#!/usr/bin/env bash

declare -g BOOTSTRAP_DIR && BOOTSTRAP_DIR="$(cd "${BASH_SOURCE[0]%/*}" && pwd)/lib"
declare -g CACHE_DIR="${BOOTSTRAP_DIR}/.cache"

declare -ag IMPORT_SOURCES=(
    "${CACHE_DIR}"
    "https://raw.githubusercontent.com/nulliel/bash-starter/master/lib/modules"
)

# shellcheck source=lib/bootstrap
source "${BOOTSTRAP_DIR}/bootstrap"

##
# TODO: Documentation
##
main()
{
    :
}

main "$@"
