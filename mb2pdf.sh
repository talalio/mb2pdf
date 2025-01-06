#!/bin/bash

output_dir=$1
input_file=$2

mkdir -p $output_dir/pdf
echo "[+] Extracting chapters from ZIP file"
unzip -nqq "$input_file" -d $output_dir

echo "[+] Mergin images in PDFs"
counter=0
for d in `ls $output_dir`;
do
  [ "$d" == "pdf" ] && continue
  convert $output_dir/$d/* "$output_dir/pdf/$counter.pdf"
  counter=$((counter+1))
done

echo "[+] Done"
