### JennieLee
### 2017-11-6
### 背景：学会使用read -p指令，进行输入
### 功能：用户根据提示，依次输入姓，名，最后将打印出用户姓名

#!/bin/bash

###用户输入
read -p "please enter your first name:" firstname 
###用户输入
read -p "please enter your last name: " lastname

###输出
echo -e "\nYour name is: ${firstname} ${lastname}"
