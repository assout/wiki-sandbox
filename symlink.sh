#!/bin/bash

readonly CMD_NAME=$(basename "${0}")
if [ "${OSTYPE}" = msys ] ; then
  echo "${CMD_NAME}: It doesn't meet the prerequisites" >&2
  exit 1
fi

readonly HERE=$(cd "$(dirname "$0")" || exit 1; pwd)

ln -fL "${HERE}/.mdlrc" ~/
ln -fL "${HERE}/.mdlrc.style.rb" ~/

