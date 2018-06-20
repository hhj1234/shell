#!/bin/bash

# 只读变量(不能unset, 不能重新赋值)
gender='man'
readonly gender
unset gender

# 拼接字符串
your_name="hj"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"

# 获取字符串长度
string='study shell'
echo ${#string}

# 截取字符
echo ${string:1:4}

# 查找字符 (u或s先找到哪个就输出哪个的位置)
echo `expr index "${string}" eu`

# 数组 (只能是一维数组, 调用单个元素必须用大括号, 多个元素间用空格分开)
array=(a b c)
echo ${array[0]}
echo ${array[@]} ${array[*]}
echo ${#array[@]} ${#array[*]}

# 传递参数
echo "脚本名称为：$0"
echo "第一个参数为：$1"
echo "参数个数为：$#"
echo "传递的参数作为一个字符串显示：$*";

# [ 1 -o 2] 或, [ 1 -a 2] 且. && ||

# [ -z $a ] $a长度为0则返回true, [ -n $a] $a长度为0则返回false, [ $a ]是否为空

# for
for loop in 1 2 3 
do
    echo $loop
done

# while
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done

# 包含文件 用source 或 . + 空格
source include.sh
. include.sh

echo $url

# 环境变量
echo $PATH

# -p 多个参数, -t 3 表示等待3秒无结果便继续往下执行
read -t 1 -p "what's your name??" first last
echo first: $first
echo last: $last

# $UID 当前用户的id, 0 为 root用户
echo $UID

# 执行脚本时的目录
echo `pwd`
