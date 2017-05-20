#!/bin/bash

SHKIT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function iscool(){
    if [[ $? -ne 0 ]]; then
        # non-zero exit code = error
        sox -q "$SHKIT_DIR/assets/error.wav" -d
    else
        # zero exit code = ok
        sox -q "$SHKIT_DIR/assets/ok.wav" -d
    fi
}
