#!/usr/bin/env bash
# sort对文件排序
# sort (选项)(参数)
# 选项
  # -n 按数值的大小排序
  # -r 逆序
  # -t 排序采用的分隔符
  # -k 指定需要排序的列
# 参数
  # 指定待排序的列
sort -t : -nrk 3 sort.txt