


## Manga Batch to Pdf (mb2pdf)

A script to convert managa chapters downloaded from mangakatana to pdf format.

### Usage

1. Download a file from [mangakatana](https://mangakatana.com). 
2. Clone the script and make it executable

```sh
$ git clone https://github.com/talalio/mb2pdf
$ cd mb2pdf && chmod +x mb2pdf
```

3. Run the script by specifying the output directory and the input file.

```sh
$ ./mb2pdf ~/manga_files/soul_eater ~/Downloads/soul-eater_c000.1\ _\ c010.zip
[+] Extracting chapters from ZIP file
[+] Merge images in PDFs
[+] Done
$ ls ~/manga_files/soul_eater/pdf
000.1.pdf  000.2.pdf  000.3.pdf  001.1.pdf  001.2.pdf  002.pdf  003.pdf
004.pdf  005.pdf  006.pdf  007.pdf  008.pdf  009.pdf  010.pdf
```
