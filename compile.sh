#!bin/bash

for file in `find . -type f -name *.less -not -name _*`
do 
	echo "$file --> "${file%.*}".css"
	lessc $file "${file%.*}".css
done

echo "Нажмите Enter, чтобы выйти..."
read