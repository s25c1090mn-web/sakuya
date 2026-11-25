#!/bin/bash
# SPDX-FileCopyrightText: 2026 Sakuya Fukui
# SPDX-License-Identifier: BSD-3-Clause
ng () {
        echo ${1}行目のテスト失敗
        res=1
}
res=0
out=$(printf "1 2 3\n1 2 3\n1" |./kadai)
[ "${out}" = 1 ] || ng "$LINENO"
[ "${res}" = 0 ] && echo OK
out=$(printf "1 2 \n1 2 3\n1" |./kadai)
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
out=$(echo あ | ./kadai)           
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
out=$(echo a | ./kadai)          
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO"
out=$(echo | ./kadai)           
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
[ "${res}" = 0 ] && echo OK
exit $res
