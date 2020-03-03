#!/bin/bash -eu

msg() {
    echo >&2 "I require env $1 but it's not set."
}

exit_status=0

for env in "$@"; do
    [[ -v ${env} ]] || { msg "$env"; exit_status=1; }
done

exit $((exit_status))
