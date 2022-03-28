# sed是一种流编辑器，一次处理一行内容。
# 处理时，把当前处理的行存储在临时缓冲区，称为“模式空间”
# 接着用sed命令处理缓冲区中的内容。
# 处理完成后，把缓冲区中的内容送往屏幕。
# 接着处理下一行，直至末尾。
# 文件内容并没有改变，除非你使用重定向存储输出。

# sed [选项参数] 'command' filename

# 选项参数 -e: 直接在指定列模式下进行sed的动作编辑
# command :
          #   a   新增
          #   d   删除
          #   s   查找并替换
echo "把mei nv插入到sed.txt的第二行下面: "
sed "2a mei nv" sed.txt
echo ""

echo "删除所有包含wo的行"
sed "/wo/d" sed.txt
echo ""

echo "将wo替换成ni。g代表全局替换"
sed "s/wo/ni/g" sed.txt
sed "s/wo/ni/" sed.txt
echo ""

echo "将第二行删除并把wo替换成ni"
sed -e "2d" -e "s/wo/ni/g" sed.txt
