#!/usr/bin/env bash
set -Eeuo pipefail

sed -i "s/{{repo}}/${1:-$(basename "$PWD")}/g" ./*.md
rm -f "${BASH_SOURCE[0]}"
