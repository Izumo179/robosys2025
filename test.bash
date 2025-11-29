#!/bin/bash
# SPDX-FileCopyrightText: 2025 Soshi Ohseto <付けたければメールアドレス>
# SPDX-License-Identifier: BSD-3-Clause

set -eu

out="$(printf "A\nB\n" | ./emphbox)"

echo "$out" | head -n 1 | grep -E '^\*+$' >/dev/null

echo "OK (initial test)"
