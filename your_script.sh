#!/usr/bin/env bash

#########################################################
## Bash Starter (https://github.com/nulliel/bash-starter)
#########################################################
declare -g BOOTSTRAP_DIR && BOOTSTRAP_DIR="$(cd "${BASH_SOURCE[0]%/*}" && pwd)/lib"

# shellcheck disable=SC2034
declare -a ADDITIONAL_IMPORT_SOURCES=()

# shellcheck source=lib/bootstrap
source "${BOOTSTRAP_DIR}/bootstrap"

##############
## Your Script
##############
main()
{
    return 0
}

main "$@"
