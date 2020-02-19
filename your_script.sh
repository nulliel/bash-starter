#!/usr/bin/env bash
##
## Author: Stephen Ribich <stephen@ribich.dev>
## URL:    https://github.com/sribich/bash-starter
##
## ______           _       _____ _             _
## | ___ \         | |     /  ___| |           | |
## | |_/ / __ _ ___| |___  \ `--.| |_ __ _ _ __| |_ ___ _ __
## | ___ \/ _` / __| '_  \  `--. \ __/ _` | '__| __/ _ \ '__|
## | |_/ / (_| \__ \ | | | /\__/ / || (_| | |  | ||  __/ |
## \____/ \__,_|___/_| |_| \____/ \__\__,_|_|   \__\___|_|
##
## License: MIT

################################################################################
## Configs
################################################################################
declare -Ag BASH_STARTER=(
    [VERSION]="master"
    [LIB_DIR]="lib"

    [MODULE_REVIEW]="yes"

    ## Do not change any variables past this in the BASH_STARTER
    ## array unless you know what you are doing
    [GIT_URL]="https://raw.githubusercontent.com/sribich/bash-starter"
    [LIB_URL]="${BASH_STARTER[GIT_URL]}/${BASH_STARTER[VERSION]}/lib"
)

declare -a BASH_STARTER_IMPORT_SOURCES=(
    "${BASH_STARTER[LIB_URL]}/modules"
)

declare -a BASH_STARTER_DEFAULT_MODULES=(

)

################################################################################
## Bootstrap
################################################################################
set -o errexit  # Exit when a command returns a non-zero status code
set -o nounset  # Exit when an unset variable is used
set -o pipefail # Exit when a command fails in a pipe

declare -g BOOTSTRAP_DIR                                       \
        && BOOTSTRAP_DIR="$(cd "${BASH_SOURCE[0]%/*}" && pwd)" \
        && BOOTSTRAP_DIR="${BOOTSTRAP_DIR}/${BASH_STARTER[LIB_DIR]}"

mkdir -p "${BOOTSTRAP_DIR}"

if [[ ! -f "${BOOTSTRAP_DIR}/bootstrap" ]]; then
    if command -v wget 1>/dev/null 2>&1; then
        wget -O "${BOOTSTRAP_DIR}/bootstrap" "${BASH_STARTER[LIB_URL]}/bootstrap"
    elif command -v curl 1>/dev/null 2>&1; then
        curl -fsLo "${BOOTSTRAP_DIR}/bootstrap" "${BASH_STARTER[LIB_URL]}/bootstrap"
    else
        printf "Bash Starter requires either wget or curl to be installed\n" 1>&2
        exit 1
    fi
fi

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
