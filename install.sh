#!/bin/bash

if [ "${OSTYPE}" = msys ] ; then
  echo "install.sh: It doesn't meet the prerequisites" >&2
  exit 1
fi

readonly HERE=$(cd "$(dirname "$0")" || exit 1; pwd)

ln -fs "${HERE}/" ~/
ln -fL "${HERE}/.mdlrc" ~/
ln -fL "${HERE}/.mdlrc.style.rb" ~/

