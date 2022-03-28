# awk是一个强大的文本分析工具。
# 把文件逐行的读入，默认以空格作为分隔符每行切片。
# 切开的部分再进行分析处理

# awk [选项参数] 'pattern1{action1} pattern2{action2} ...' filename
  # pattern 表示在文件中查找的内容，也就是匹配模式
  # action 找到匹配之后执行的一系列命令
  # 选项参数说明
  # -F 指定拆分分隔符
  # -v 赋值一个用户定义变量
echo "搜索以root为关键字开头的所有行，并输出该行的第7列"
awk -F : '/^root/{print $7}' passwd
echo ""

echo "搜索以root为关键字开头的所有行，并输出该行的第1和7列"
awk -F : '/^root/{print $1 "#" $7}' passwd
awk -F : '/^root/{print $1$7}' passwd
echo ""

echo "只显示passwd的第一列和第7列，以逗号分割，且在所有行前面添加列名user，shell在最后一行添加”XXXXX, /bin/zuishuai“"
awk -F : 'BEGIN{print "user, shell"} {print$1, "," $7} END{print "XXXXXX, bin/zuishuai"}' passwd
echo ""

echo "将用户id（第3列）增加数值1并输出"
awk -F : -v  i=1 '{print$3+i}' passwd # 相当于没有匹配条件
echo ""

# awk内置变量
# FILENAME：文件名
# NR 已读的记录数（读到第几行）
# NF 浏览记录的域的个数（切割后，列的个数）
echo "1) 统计passwd文件名，每行的行号，每行的列数"
awk -F : '{print "filename: " FILENAME ", linenumber:" NR ", columns:" NF  }' passwd
echo "2)切割IP"
ifconfig eth0 | grep -w "inet" | awk '{print $2}'
echo "3)查询空行所在行号×"
awk '/^$/ {print NR}' sed.txt
