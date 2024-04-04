#!/bin/bash

for txt_file in "./files"/*; do
    filename=$(basename "$txt_file")
    first_char="${filename:0:1}"
    first_char_lower=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')
    dest_folder="./$first_char_lower"
    
    mv "$txt_file" "$dest_folder"
    #echo "텍스트 파일을 $dest_folder 폴더로 이동했습니다."
done