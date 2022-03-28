# 基本语法
# [ condition ]注意condition前后要有空格
# 常用判断条件

# 1.整数比较
# = 字符串比较
# -lt 小于（less than）
# -le 小于等于（less equal）
# -eq 等于（equal）
# -gt 大于(greater than)
# -ge 大于等于（greater equal）
# -ne 不等于（not equal）

# 2.按照文件权限判断
# -r 有读的权限
# -w 写...
# -x 执行...

# 3.按照文件类型
# -f 文件存在且是一个常规文件（file）
# -e 文件存在（existence)
# -d 存在此目录
[ 23 -ge 22 ]
echo $?

[ -w 条件判断.sh ]
echo $?

# 多条件判断
# && 表示前一条命令执行成功时，才执行后一条命令，
# || 表示上一条命令执行失败后，才执行下一条命令
echo $condition
[ condition ] && echo OK || echo notok
[ condition ] && [ ] || echo notok