#!/bin/bash

output_dir=$1
input_file=$2

mkdir -p $output_dir/pdf
echo "[+] Extracting chapters from ZIP file"
unzip -nqq "$input_file" -d $output_dir

echo "[+] Merge images in PDFs"
for d in `ls $output_dir`;
do
  [ "$d" == "pdf" ] && continue
  # chapter number
  chn=`echo $d | sed -e s/c//g`
  convert $output_dir/$d/* "$output_dir/pdf/$chn.pdf"
done

echo "[+] Done"
