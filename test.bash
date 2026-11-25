#!/bin/bash
# SPDX-FileCopyrightText: 2026 Sakuya Fukui
# SPDX-License-Identifier: BSD-3-Clause
ng () {
        echo ${1}行目のテスト失敗
        res=1
}
res=0
out=$(printf "1 2 3\n1 2 3\n1" |./minimum-sqare-law)
[ "${out}" = "1.0 0.0" ] || ng "$LINENO"
[ "${res}" = 0 ] && echo OK
out=$(printf "1 2 \n1 2 3\n1" |./minimum-sqare-law)
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
out=$(echo あ ||./minimum-sqare-law)           
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
out=$(echo a ||./minimum-sqare-law)          
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO"
out=$(echo ||./minimum-sqare-law)           
[ "$?" = 1 ]      || ng "$LINENO" 
[ "${out}" = "" ] || ng "$LINENO" 
[ "${res}" = 0 ] && echo OK
exit $res
