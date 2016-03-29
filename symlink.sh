#!/bin/bash

readonly CMD_NAME=$(basename "${0}")
readonly HERE=$(cd "$(dirname "$0")" || exit 1; pwd)

ln -sf "${HERE}/" ~/
ln -fL "${HERE}/.mdlrc" ~/
ln -fL "${HERE}/.mdlrc.style.rb" ~/

