#!/usr/bin/env bash
for i in $*
do
  echo "this is $i"
done

echo "比较@与*的区别"
echo "*和@都表示传递给函数或者脚本的所有参数，不被双引号包裹时，都以\$1 \$2 …\$n的形式输出所有参数"
for j in $@
do
  echo "this about $j"
done
echo "当被双引号包裹，*会把所有参数作为一个整体的参数。@会展开"
for k in "$*"
do
  echo "this about $k"
done
echo "______________________"
for l in "$@"
do
  echo "this about $l"
done