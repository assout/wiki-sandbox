#!/bin/bash

# TODO: チェック処理リファクタ
if [ "${OSTYPE}" = msys ] ; then echo "install.sh: It doesn't meet the prerequisites" >&2 && exit 1 ; fi

mkdir -p ~/Dropbox/
cd ~/Dropbox
git clone git@github.com:assout/memolist.git
cd ~/Dropbox/memolist/

ln -fL ~/.mdlrc
ln -fL ~/.mdlrc.style.rb
ln -fs ~/Dropbox/memolist/ ~/

