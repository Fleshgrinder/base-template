#!/usr/bin/env bash
set -Eeuo pipefail

sed -i "s/{{repo}}/${1:-$(basename "$PWD")}/g" ./*.md
git add .
git rm --cached "${BASH_SOURCE[0]}"
git commit -m 'Init Template'
rm -f "${BASH_SOURCE[0]}"
