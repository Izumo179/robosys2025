#!/bin/bash
# SPDX-FileCopyrightText: 2025 Soshi Ohseto <付けたければメールアドレス>
# SPDX-License-Identifier: BSD-3-Clause

set -eu

out1="$(printf "A\nBB\n" | ./plus)"

expected1=$(cat << 'EOF'
*********
*** A  ***
*** BB ***
*********
EOF
)

if [ "$out1" != "$expected1" ]; then
    echo "TEST1 FAILED (as expected)" >&2
    echo "--- got ---"
    printf '%s\n' "$out1"
    echo "--- expected (wrong on purpose) ---"
    printf '%s\n' "$expected1"
    exit 1
fi

echo "テスト1 クリア！"
