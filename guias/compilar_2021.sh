#!/bin/bash

# esta línea p/ sacar todos los caracteres q no sean UTF-8, sino pandoc se queja.
# iconv -f utf-8 -t utf-8 -c 2021-1c-pr1.tex > 2021-1c-pr1.md

for i in `seq 8 8`
do
    pandoc -V lang=sp -V geometry:"top=2cm, bottom=1.5cm, left=1cm, right=1cm" -s 2021-1c-pr${i}.md -o 2021-1c-pr${i}.pdf
done
