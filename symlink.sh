#!/bin/bash

readonly CMD_NAME=$(basename "${0}")
readonly HERE=$(cd "$(dirname "$0")" || exit 1; pwd)

ln -sf "${HERE}/" ~/
if [ "${OSTYPE}" = "linux-gnu" ] ; then
  ln -sf "${HERE}/" ~/Dropbox/
fi
ln -fL "${HERE}/.mdlrc" ~/
ln -fL "${HERE}/.mdlrc.style.rb" ~/

