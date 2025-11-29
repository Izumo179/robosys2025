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


################################
###    errorが発生するはず   ###
################################

out2="$(printf "HELLO\nWORLD\n" | ./plus)"

# 1文字短いようにしてみる
expected2=$(cat << 'EOF'
***********
*** HELLO ***
*** WORLD ***
***********
EOF
)

#エラーが起きたら成功
if [ "$out2" != "$expected2" ]; then
    echo "intentional test failure: box width mismatch" >&2
    echo "got:"
    printf '%s\n' "$out2"
    echo "expected:"
    printf '%s\n' "$expected2"
    exit 1
fi
