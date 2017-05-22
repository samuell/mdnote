#!/bin/bash
# ----
# Convert Markdown files starting with '2' 
# in the current directory to HTML
# Author: Samuel Lampa <samuel.lampa@gmail.com>
# ----

if [[ ! -d html ]]; then
	mkdir html
fi;
for f in 2*.md; do 
    htmlfile=html/${f%.md}.html
    echo '<link rel="stylesheet" type="text/css" href="../css/main.css">' > $htmlfile
	pandoc -i $f -o $htmlfile.tmp;
    cat $htmlfile.tmp >> $htmlfile;
    rm $htmlfile.tmp;
done;
