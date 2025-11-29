#!/bin/bash
# SPDX-FileCopyrightText: 2025 Soshi Ohseto <付けたければメールアドレス>
# SPDX-License-Identifier: BSD-3-Clause

#テスト1
set -eu

out1="$(printf "A\nBB\n" | ./plus)"

expected1=$(cat << 'EOF'
**********
*** A  ***
*** BB ***
**********
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

#テスト2
out2="$(printf "HELLO\n" | ./plus)"

expected2=$(cat << 'EOF'
*************
*** HELLO ***
*************
EOF
)

if [ "$out2" != "$expected2" ]; then
    echo "TEST2 FAILED (expected at this stage)" >&2
    exit 1
fi

echo "テスト2 クリア！"

#テスト3
out3="$(./plus </dev/null || true)"

expected3="empty"

if [ "$out3" != "$expected3" ]; then
    echo "TEST3 FAILED (expected at this stage)" >&2
    exit 1
fi

echo "テスト3 クリア！"
