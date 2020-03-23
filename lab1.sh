#!/bin/bash
dir=~/Lab1 #Исследуемая директория
rm $dir/lab1.xls # Удаление таблицы 
mkdir ~/vspom # создание  директории vspom вспомогательная 
cd ~/vspom # переход в  директорию 
IFS=$'\n' # разделитель-перенос строки  
files=$( find $dir -type f ) # Список файлов в директории
for file in $files; do # Перебор файлов 
echo "$file" | awk -F "/" '{print $NF}' |  awk -F "." '{if (NF==1) {print $0,"-"} else {print $0,$NF}}' OFS=',' >> name.txt # вывод названия файла расширения
stat --format=%s "$file" >> size.txt # Выводит размер файла в size.txt
stat --format=%y "$file" >> times.txt # Выводит время последнего редактирования в times.txt
file --mime-type -b  "$file" >> type.txt # Выводит тип файла в type.txt
lek=$(mediainfo "$file" 2>/dev/null | grep --max-count=1 Duration | awk '{print $3,$4,$5,$6}') 
echo -"$lek" >> duration.txt # Вывод длительности аудио и видео файла в duration.txt
done 
echo Имя,Расширение,Размер,Время изменения,Тип,Длительность > $dir/lab1.xls 
paste --delimiters=',' name.txt size.txt times.txt type.txt duration.txt >> $dir/lab1.xls #Запись всего в таблицу 

cd $dir # Переход в исследуемую директорию 

rm -r ~/vspom #Удаление вспомогательной директории 
