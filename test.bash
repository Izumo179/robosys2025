#!/bin/bash
# SPDX-FileCopyrightText: 2025 Soshi Ohseto <付けたければメールアドレス>
# SPDX-License-Identifier: BSD-3-Clause

set -eu

out="$(printf "A\nBB\n" | ./plus)"

expected=$(cat << 'EOF'
**********
*** A  ***
*** BB ***
**********
EOF
)

if [ "$out" != "$expected" ]; then
    echo "unexpected output" >&2
    echo "got:"
    printf '%s\n' "$out"
    echo "expected:"
    printf '%s\n' "$expected"
    exit 1
fi

echo "OK!"
