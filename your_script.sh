#!/usr/bin/env bash

###############
## Bash Starter
###############
declare -g BOOTSTRAP_DIR && BOOTSTRAP_DIR="$(cd "${BASH_SOURCE[0]%/*}" && pwd)/lib"

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
