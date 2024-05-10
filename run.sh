#!/bin/bash

set -eo pipefail

FILES=(*.evy)

for file in "${FILES[@]}"; do
  printf "%7s " "${file}"
  evy test "$file" || true
done
