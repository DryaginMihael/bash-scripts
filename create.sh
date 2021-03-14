#!/bin/bash

for (( i=0; i < 5; i++ ))
do
mkdir dir$i
cd dir$i
touch style.less text.txt _style.less
printf "hello" > text.txt
printf "@header-font: Georgia;
h1, h2, h3, h4 {
    font-family: @header-font;
}
.large {
    font-family:@header-font;
}" > style.less
printf "@header-font: Georgia;
h1, h2, h3, h4 {
    font-family: @header-font;
}
.large {
    font-family:@header-font;
}" > _style.less
done
