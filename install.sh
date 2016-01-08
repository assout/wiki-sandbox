#!/bin/bash

mkdir -p ~/Dropbox/
cd ~/Dropbox
git clone git@github.com:assout/memolist.git
cd ~/Dropbox/memolist/

ln -fL ~/.mdlrc
ln -fL ~/.mdlrc.style.rb
ln -fL ~/.textlintrc coverage.textlintrc
ln -fs ~/Dropbox/memolist/ ~/

