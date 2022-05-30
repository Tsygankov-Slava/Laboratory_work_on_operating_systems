#!/bin/sh

path=""
object=""

echo "Введите путь к файлу/директории [Если хотите искать в директории, в которой находитесь, введите просто . ]: "
read path
echo "Введите название объекта: "
read object

out=$(find $path -name "*$object*")
if [[ "$out" = "" ]]
then
	echo "Файл не найден!"
else
	echo $out
fi