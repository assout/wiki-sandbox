#!/bin/bash

here="$(command cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
summary_file="${here}/SUMMARY.md"
cat << EOS > "${summary_file}"
# Summary

- Memo List
EOS

for target in *.md ; do
  title=$(head -1 "${target}" | sed -e 's/# Title: //g')
  echo "    - [${title}](${target})" >> "${summary_file}"
done
