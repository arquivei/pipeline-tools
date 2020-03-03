#!/bin/bash -eu

msg() {
    echo >&2 "I require command $1 but it's not available."
}

exit_status=0

for cmd in "$@"; do
    command -v "$cmd" > /dev/null 2>&1 || { msg "$cmd"; exit_status=1; }
done

exit $((exit_status))
