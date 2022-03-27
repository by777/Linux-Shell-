#!/usr/bin/env bash
echo "基本语法"
echo "1)定义变量：变量=值"
echo "2)撤销变量：unset 变量"
echo "3)声明静态变量: readonly 变量， 注意不能unset"
echo "---------注意-----------"
echo "（1）变量名称可以由字母、数字和下划线组成，但是不能以数字开头，环境变量名建议大写。
      （2）等号两侧不能有空格
      （3）在bash中，变量默认类型都是字符串类型，无法直接进行数值运算。
      （4）变量的值如果有空格，需要使用双引号或单引号括起来。"

A=5
echo $A
unset A
echo $A
readonly B=2
# 不能unset B,也不能B=9重新赋值
echo "在bash中，变量默认类型都是字符串类型，无法直接进行数值运算"
C=1+2
echo $C
echo "变量的值如果有空格，需要使用双引号或单引号括起来"
C="Hello World"
echo $C
echo "可把变量提升为全局环境变量，可供其他Shell程序使"
echo "在helloworld.sh文件中增加echo \$D"
D="BX"
export D

