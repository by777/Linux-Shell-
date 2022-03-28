#!/usr/bin/env bash

# 自定义函数
#[ function ] function name[()]
#{
#  Action;
#   [return int;]
#}
##funname
#
#	（1）必须在调用函数地方之前，先声明函数，shell脚本是逐行运行。不会像其它语言一样先编译。

#	（2）函数返回值，只能通过$?系统变量获得，可以显示加：return返回，
#	如果不加，将以最后一条命令运行结果，作为返回值。return后跟数值n(0-255)
function sum() {
    s=0
    s=$[ $1 + $2 ]
    echo "$s"
}
read -p "Please input the number1: " n1;
read -p "Please input the number2: " n2;
sum $n1 $n2

