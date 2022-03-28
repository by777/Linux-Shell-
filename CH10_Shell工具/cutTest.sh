#!/usr/bin/env bash

# cut从文件的每一行剪切字节，字符，字段。并输出
# cout [选项参数] filename
# 选项：-f列号，提取第几列。
# -d 分隔符
# 默认分隔符\t
cut -d " " -f 1 cut.txt
cut -d " " -f 2,3 cut.txt
cat cut.txt | grep "guan" | cut -d " " -f 1