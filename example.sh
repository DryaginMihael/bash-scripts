#!/bin/bash

# перейти в директорию, запомнив ту из которой пришли
pushd dir0
pwd
# вернуться в директорию из которой пришли
popd
pwd

# это коммент
echo "The current directory is:"
pwd
echo "The user logged in is:"
whoami
# вывод в консоль
echo "Home for the current user is: $HOME"

echo "I have \$1 in my pocket"

# объявление переменных
grade=5
person="Adam"
echo "$person is a good boy, he is in grade $grade"

# запись результата выполнения команды в переменную
mydir=$(pwd)
mydir=`pwd`
echo $mydir


user=anotherUser
some=some

# цикл if elif else fi
if grep $user /etc/passwd
then
echo "The user $user Exists"
elif grep $some /etc/passwd
then "The user $some Exists"
echo 	
else
echo "The user $user doesn’t exist"
fi

# цикл for
for var in first second third fourth fifth
do
echo var
done

# цикл for с 
for (( i=1; i <= 10; i++ ))
do
echo "number is $i"
done

# math operation
var1=$(( 5 + 5 ))
echo $var1
var2=$(( $var1 * 2 ))
echo $var2

# выводим список файлов и директорий
for file in ./*
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
fi
done

# удалить файл
rm style.css

# удалить рекурсивно файлы, удалится и директория
rm -r directory

# удалить папку, если она пустая
rmdir directory

echo "Нажмите Enter, чтобы выйти..."
# запись в переменную
read e

# можно вызвать командную строку
# $SHELL