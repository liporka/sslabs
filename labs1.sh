#!/bin/bash

rm -f ./result.xls
IFS=$'\n'
printf "Название файла\tРасширение файла\tДата Изменения\tРазмер\tПуть\tДлительность\n" >> result.xls
start=$(pwd)

function file_size() {
	bytes=$(wc -c < $name)
	let "kbytes = "$bytes" / 1024"
	echo "$kbytes"
}

function mainfnc() {
	for file in $(ls); do
 		if [[ $(basename "$file") = result.xls ]]; then
 			continue
 		fi
		echo "found \"$file\""
		if [[ -d "$file" ]]; then
			cd "$file"
			mainfnc "$file"
			cd ..
		fi
		if [[ -f "$file" ]]; then
			name=$(basename "$file")
			extension=${name#*.}
			file_size=$(file_size)
			last_edited=$(date -r "$file" +%T" "%d/%m/%y)
 			if file -ib "$file" | grep -qE 'video|audio'; then
			 	duration=$(ffmpeg -i $file | grep Duration | awk '{print $2}')	
		 	else	
				duration="-"
			fi
 			filepath=$(pwd)
		 	cd "${start}"
			printf "${name%%.*}\t$extension\t$last_edited\t$file_size KB\t$filepath\t$duration\n" >> result.xls
			cd "${filepath}"
		fi
	done
}

mainfnc "$start"
echo "Done!"
