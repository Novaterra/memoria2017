#!bin/bash

file="libro.pdf"
file1="memoria2016.pdf"

if [ -f $file ] ; then
    rm $file
fi

if [ -f  ] ; then
    rm $file1
fi


echo "union de pdfS"
pdftk *.pdf output libro.pdf

echo "copia del archivo a tamaño mas reducido"
gs -dSAFER -dBATCH -dNOPAUSE -q -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -sOutputFile=$file1 $file
