#!/usr/bin/env bash

##
# release_token.sh contains the GH_TOKEN key used to
# execute `ghr'
##
if [[ ! -f "./release_token.sh" ]]; then
    printf "release_token.sh not found\n" 1>&2
    exit 1
fi

source "./release_token.sh"

upload_artifacts()
{
    local artifact="$(mktemp)"

    tar -czf "${artifact}" "your_script.sh" "lib/bootstrap"

    mv "${artifact}" "/tmp/bash-starter-v$1.tar.gz"

    ghr -t "${GH_TOKEN}" "$1" "/tmp/bash-starter-v$1.tar.gz"
}

main()
{
    local branch="$(git rev-parse --abbrev-ref HEAD)"

    if [[ "${branch}" != "master" ]]; then
        printf "Must be run in master\n" 1>&2
        exit 1
    fi

    git checkout -b "release/$1" || exit 1
    git tag "$1" || exit 1
    git push origin "release/$1" || exit 1
    git push --follow-tags origin "release/$1" || exit 1

    upload_artifacts "$1"

    git checkout master
}

main "$@"
