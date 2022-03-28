#!/usr/bin/env bash

# basename基本语法
# basename [string/pathname][suffix]
# basename命令删掉所有的前缀包括最后一个’/‘字符，然年后将字符串显示出来
# 选项
# suffix为后缀，如果指定了suffix，basename会将pathname或string中的suffix去掉
basename ../README.md
basename ../README.md .md

# dirname基本语法
# dirname 文件绝对路径
# 从给定的包含绝对路径的文件名中去除文件名（非目录的部分），然后返回剩下的路径（目录的部分）
dirname /etc/passwd

