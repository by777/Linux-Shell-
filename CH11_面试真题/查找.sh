#!/usr/bin/env bash
#请用shell脚本写出查找当前文件夹（./）下所有的文本文件内容中包含有字符”1”的文件名称
grep -r "txt" ./ | cut -d ":" -f 1