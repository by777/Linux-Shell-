#!/usr/bin/env bash
#read(选项)(参数)
#选项：
#    -p:指定读取时的提示符
#    -t:读取时等待的时间（秒）
#参数：
#    变量：指定读取值的变量名
read -t 7 -p "Enter your name in 7 seconds: " NAME
echo "Hello, $NAME"