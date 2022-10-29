#!/usr/bin/env bash

if [[ "$(basename -- "$0")" == "setvars.bash" ]]; then
    >&2 echo "Don't run $0, source it"
    exit 1
fi

SCRIPTPATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "imsearch-setvars: Appended $SCRIPTPATH/libs to LD_LIBRARY_PATH"
echo "imsearch-setvars: Appended $SCRIPTPATH to PATH"
export LD_LIBRARY_PATH=$SCRIPTPATH/libs${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export PATH=$PATH:$SCRIPTPATH
